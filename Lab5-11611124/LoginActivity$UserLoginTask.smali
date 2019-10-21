.class public Lcom/example/myapplication/LoginActivity$UserLoginTask;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/myapplication/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserLoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEmail:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field final synthetic this$0:Lcom/example/myapplication/LoginActivity;


# direct methods
.method constructor <init>(Lcom/example/myapplication/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/example/myapplication/LoginActivity;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->this$0:Lcom/example/myapplication/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->mEmail:Ljava/lang/String;

    .line 305
    iput-object p3, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->mPassword:Ljava/lang/String;

    .line 306
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 11
    .param p1, "params"    # [Ljava/lang/Void;

    .line 314
    const-wide/16 v0, 0x7d0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_3e

    .line 317
    nop

    .line 319
    # getter for: Lcom/example/myapplication/LoginActivity;->DUMMY_CREDENTIALS:[Ljava/lang/String;
    invoke-static {}, Lcom/example/myapplication/LoginActivity;->access$300()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_d
    const/4 v4, 0x1

    if-ge v3, v1, :cond_39

    aget-object v5, v0, v3

    .line 320
    .local v5, "credential":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "pieces":[Ljava/lang/String;
    aget-object v7, v6, v2

    aget-object v8, v6, v4

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    aget-object v7, v6, v2

    iget-object v8, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->mEmail:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 324
    aget-object v0, v6, v4

    iget-object v1, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 319
    .end local v5    # "credential":Ljava/lang/String;
    .end local v6    # "pieces":[Ljava/lang/String;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 329
    :cond_39
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 315
    :catch_3e
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 298
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/example/myapplication/LoginActivity$UserLoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->this$0:Lcom/example/myapplication/LoginActivity;

    const/4 v1, 0x0

    # setter for: Lcom/example/myapplication/LoginActivity;->mAuthTask:Lcom/example/myapplication/LoginActivity$UserLoginTask;
    invoke-static {v0, v1}, Lcom/example/myapplication/LoginActivity;->access$402(Lcom/example/myapplication/LoginActivity;Lcom/example/myapplication/LoginActivity$UserLoginTask;)Lcom/example/myapplication/LoginActivity$UserLoginTask;

    .line 348
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->this$0:Lcom/example/myapplication/LoginActivity;

    const/4 v1, 0x0

    # invokes: Lcom/example/myapplication/LoginActivity;->showProgress(Z)V
    invoke-static {v0, v1}, Lcom/example/myapplication/LoginActivity;->access$500(Lcom/example/myapplication/LoginActivity;Z)V

    .line 349
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 334
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->this$0:Lcom/example/myapplication/LoginActivity;

    const/4 v1, 0x0

    # setter for: Lcom/example/myapplication/LoginActivity;->mAuthTask:Lcom/example/myapplication/LoginActivity$UserLoginTask;
    invoke-static {v0, v1}, Lcom/example/myapplication/LoginActivity;->access$402(Lcom/example/myapplication/LoginActivity;Lcom/example/myapplication/LoginActivity$UserLoginTask;)Lcom/example/myapplication/LoginActivity$UserLoginTask;

    .line 335
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->this$0:Lcom/example/myapplication/LoginActivity;

    const/4 v1, 0x0

    # invokes: Lcom/example/myapplication/LoginActivity;->showProgress(Z)V
    invoke-static {v0, v1}, Lcom/example/myapplication/LoginActivity;->access$500(Lcom/example/myapplication/LoginActivity;Z)V

    .line 337
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 338
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->this$0:Lcom/example/myapplication/LoginActivity;

    invoke-virtual {v0}, Lcom/example/myapplication/LoginActivity;->finish()V

    goto :goto_33

    .line 340
    :cond_18
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->this$0:Lcom/example/myapplication/LoginActivity;

    # getter for: Lcom/example/myapplication/LoginActivity;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/example/myapplication/LoginActivity;->access$600(Lcom/example/myapplication/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->this$0:Lcom/example/myapplication/LoginActivity;

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Lcom/example/myapplication/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity$UserLoginTask;->this$0:Lcom/example/myapplication/LoginActivity;

    # getter for: Lcom/example/myapplication/LoginActivity;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/example/myapplication/LoginActivity;->access$600(Lcom/example/myapplication/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 343
    :goto_33
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 298
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/example/myapplication/LoginActivity$UserLoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
