Delivery-date: Mon, 27 Nov 2023 07:38:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFz-00Adxa-0D
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:38:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFy-0007Te-6N
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:38:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YPkdcxLPNMinN2dU4s86I/v8xdmhCzcsrmtK2flypd4=; b=zYv4D028vV9zY/zapNLQtHAULM
	J1Qg3d+EnTflZKY2I4+myc3FGj/38wy7vl2PlnnTtJS/GCoLycPpw9DxGpFQ+hT0M3NmBvjs2v+0C
	LuDAYHtt5VIN9EvWgx8s0ZAk95+qv+nqAebuwOCufqEh3QCEcXk1p0yePS+iRJnH5Dwi5Y5darzbI
	ME3RduQAXHz6tRZNICsRd0p+azcK38NReWUg5jE2/yyTTvng+GPaznnLxnug7nW3RN2udTwxEmNtx
	8HoGlI21JSaKyR/yEt8PeNXHk3+6bM3iZDlgx0D6+MExD1EWBRrvj8+1qTVbUyVS3t/UuXGpuN7k7
	yg/xFuDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VEU-001Z48-1q;
	Mon, 27 Nov 2023 06:36:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VE8-001Ywv-31
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:36:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00071M-QN; Mon, 27 Nov 2023 07:36:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00Bsgl-DT; Mon, 27 Nov 2023 07:36:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-009Fpr-13;
	Mon, 27 Nov 2023 07:36:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:35:58 +0100
Message-Id: <20231127063559.2205776-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
References: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_223617_978478_8272EE05 
X-CRM114-Status: GOOD (  25.31  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/8] optee: add experimental support for /dev/tee0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marc Kleine-Budde <mkl@pengutronix.de>

Userspace accesses OP-TEE via ioctls and mmaps of the /dev/tee0
device. Replicating this in barebox is useful for verifying proper
operation of CONFIG_OPTEE by hacking libteeclient + optee_tests to
run under barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/tee/optee/Kconfig |   9 +
 drivers/tee/tee_core.c    | 406 ++++++++++++++++++++++++++++++++++++++
 drivers/tee/tee_private.h |   4 +
 drivers/tee/tee_shm.c     | 142 ++++++++++++-
 include/linux/tee_drv.h   |  33 ++++
 5 files changed, 589 insertions(+), 5 deletions(-)

diff --git a/drivers/tee/optee/Kconfig b/drivers/tee/optee/Kconfig
index 4eb0dd6ac61c..3c791a10c4ac 100644
--- a/drivers/tee/optee/Kconfig
+++ b/drivers/tee/optee/Kconfig
@@ -18,3 +18,12 @@ config OPTEE
 	  CONFIG_BOOTM_OPTEE and PBL_OPTEE.
 
 	  If unsure, say n here.
+
+config OPTEE_DEVFS
+	bool "Provide /dev/tee0 interface"
+	depends on OPTEE && FS_DEVFS && EXPERIMENTAL
+	help
+	  Userspace accesses OP-TEE via ioctls and mmaps of the /dev/tee0
+	  device. This are no current in-tree users of this interface,
+	  but it's useful for compiling libteeclient + optee_tests for
+	  use inside barebox to verify proper operation of CONFIG_OPTEE.
diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index be92e3dfc920..0bf645a310eb 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -82,6 +82,32 @@ void teedev_close_context(struct tee_context *ctx)
 }
 EXPORT_SYMBOL_GPL(teedev_close_context);
 
+static int tee_open(struct cdev *cdev, unsigned long flags)
+{
+	struct tee_context *ctx;
+
+	if (cdev->priv)
+		return -EBUSY;
+
+	ctx = teedev_open(container_of(cdev, struct tee_device, cdev));
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
+
+	cdev->priv = ctx;
+
+	return 0;
+}
+
+static int tee_release(struct cdev *cdev)
+{
+	struct tee_context *ctx = cdev->priv;
+
+	teedev_close_context(ctx);
+	cdev->priv = NULL;
+
+	return 0;
+}
+
 int tee_session_calc_client_uuid(uuid_t *uuid, u32 connection_method,
 				 const u8 connection_data[TEE_IOCTL_UUID_LEN])
 {
@@ -96,6 +122,367 @@ int tee_session_calc_client_uuid(uuid_t *uuid, u32 connection_method,
 }
 EXPORT_SYMBOL_GPL(tee_session_calc_client_uuid);
 
+static int tee_ioctl_version(struct tee_context *ctx,
+			     struct tee_ioctl_version_data __user *uvers)
+{
+	struct tee_ioctl_version_data vers;
+
+	ctx->teedev->desc->ops->get_version(ctx->teedev, &vers);
+
+	if (ctx->teedev->desc->flags & TEE_DESC_PRIVILEGED)
+		vers.gen_caps |= TEE_GEN_CAP_PRIVILEGED;
+
+	if (copy_to_user(uvers, &vers, sizeof(vers)))
+		return -EFAULT;
+
+	return 0;
+}
+
+static int tee_ioctl_shm_alloc(struct tee_context *ctx,
+			       struct tee_ioctl_shm_alloc_data *data)
+{
+	struct tee_shm *shm;
+
+	/* Currently no input flags are supported */
+	if (data->flags)
+		return -EINVAL;
+
+	shm = tee_shm_alloc_user_buf(ctx, data->size);
+	if (IS_ERR(shm))
+		return PTR_ERR(shm);
+
+	data->id = shm->dev.id;
+	data->flags = shm->flags;
+	data->size = shm->size;
+
+	return tee_shm_get_fd(shm);
+}
+
+static int
+tee_ioctl_shm_register(struct tee_context *ctx,
+		       struct tee_ioctl_shm_register_data *data)
+{
+	struct tee_shm *shm;
+
+	/* Currently no input flags are supported */
+	if (data->flags)
+		return -EINVAL;
+
+	shm = tee_shm_register_user_buf(ctx, data->addr, data->length);
+	if (IS_ERR(shm))
+		return PTR_ERR(shm);
+
+	data->id = shm->dev.id;
+	data->flags = shm->flags;
+	data->length = shm->size;
+
+	return tee_shm_get_fd(shm);
+}
+
+static int params_from_user(struct tee_context *ctx, struct tee_param *params,
+			    size_t num_params,
+			    struct tee_ioctl_param __user *uparams)
+{
+	size_t n;
+
+	for (n = 0; n < num_params; n++) {
+		struct tee_shm *shm;
+		struct tee_ioctl_param ip;
+
+		if (copy_from_user(&ip, uparams + n, sizeof(ip)))
+			return -EFAULT;
+
+		/* All unused attribute bits has to be zero */
+		if (ip.attr & ~TEE_IOCTL_PARAM_ATTR_MASK)
+			return -EINVAL;
+
+		params[n].attr = ip.attr;
+		switch (ip.attr & TEE_IOCTL_PARAM_ATTR_TYPE_MASK) {
+		case TEE_IOCTL_PARAM_ATTR_TYPE_NONE:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT:
+			break;
+		case TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT:
+			params[n].u.value.a = ip.a;
+			params[n].u.value.b = ip.b;
+			params[n].u.value.c = ip.c;
+			break;
+		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT:
+			/*
+			 * If a NULL pointer is passed to a TA in the TEE,
+			 * the ip.c IOCTL parameters is set to TEE_MEMREF_NULL
+			 * indicating a NULL memory reference.
+			 */
+			if (ip.c != TEE_MEMREF_NULL) {
+				/*
+				 * If we fail to get a pointer to a shared
+				 * memory object (and increase the ref count)
+				 * from an identifier we return an error. All
+				 * pointers that has been added in params have
+				 * an increased ref count. It's the callers
+				 * responibility to do tee_shm_put() on all
+				 * resolved pointers.
+				 */
+				shm = tee_shm_get_from_id(ctx, ip.c);
+				if (IS_ERR(shm))
+					return PTR_ERR(shm);
+
+				/*
+				 * Ensure offset + size does not overflow
+				 * offset and does not overflow the size of
+				 * the referred shared memory object.
+				 */
+				if ((ip.a + ip.b) < ip.a ||
+				    (ip.a + ip.b) > shm->size) {
+					tee_shm_put(shm);
+					return -EINVAL;
+				}
+			} else if (ctx->cap_memref_null) {
+				/* Pass NULL pointer to OP-TEE */
+				shm = NULL;
+			} else {
+				return -EINVAL;
+			}
+
+			params[n].u.memref.shm_offs = ip.a;
+			params[n].u.memref.size = ip.b;
+			params[n].u.memref.shm = shm;
+			break;
+		default:
+			/* Unknown attribute */
+			return -EINVAL;
+		}
+	}
+	return 0;
+}
+
+static int params_to_user(struct tee_ioctl_param __user *uparams,
+			  size_t num_params, struct tee_param *params)
+{
+	size_t n;
+
+	for (n = 0; n < num_params; n++) {
+		struct tee_ioctl_param __user *up = uparams + n;
+		struct tee_param *p = params + n;
+
+		switch (p->attr) {
+		case TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT:
+			if (put_user(p->u.value.a, &up->a) ||
+			    put_user(p->u.value.b, &up->b) ||
+			    put_user(p->u.value.c, &up->c))
+				return -EFAULT;
+			break;
+		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT:
+			if (put_user((u64)p->u.memref.size, &up->b))
+				return -EFAULT;
+			break;
+		default:
+			break;
+		}
+	}
+	return 0;
+}
+
+static int tee_ioctl_open_session(struct tee_context *ctx,
+				  struct tee_ioctl_buf_data __user *ubuf)
+{
+	int rc;
+	size_t n;
+	struct tee_ioctl_buf_data buf;
+	struct tee_ioctl_open_session_arg __user *uarg;
+	struct tee_ioctl_open_session_arg arg;
+	struct tee_ioctl_param __user *uparams = NULL;
+	struct tee_param *params = NULL;
+	bool have_session = false;
+
+	if (!ctx->teedev->desc->ops->open_session)
+		return -EINVAL;
+
+	if (copy_from_user(&buf, ubuf, sizeof(buf)))
+		return -EFAULT;
+
+	if (buf.buf_len > TEE_MAX_ARG_SIZE ||
+	    buf.buf_len < sizeof(struct tee_ioctl_open_session_arg))
+		return -EINVAL;
+
+	uarg = u64_to_user_ptr(buf.buf_ptr);
+	if (copy_from_user(&arg, uarg, sizeof(arg)))
+		return -EFAULT;
+
+	if (sizeof(arg) + TEE_IOCTL_PARAM_SIZE(arg.num_params) != buf.buf_len)
+		return -EINVAL;
+
+	if (arg.num_params) {
+		params = kcalloc(arg.num_params, sizeof(struct tee_param),
+				 GFP_KERNEL);
+		if (!params)
+			return -ENOMEM;
+		uparams = uarg->params;
+		rc = params_from_user(ctx, params, arg.num_params, uparams);
+		if (rc)
+			goto out;
+	}
+
+	if (arg.clnt_login >= TEE_IOCTL_LOGIN_REE_KERNEL_MIN &&
+	    arg.clnt_login <= TEE_IOCTL_LOGIN_REE_KERNEL_MAX) {
+		pr_debug("login method not allowed for user-space client\n");
+		rc = -EPERM;
+		goto out;
+	}
+
+	rc = ctx->teedev->desc->ops->open_session(ctx, &arg, params);
+	if (rc)
+		goto out;
+	have_session = true;
+
+	if (put_user(arg.session, &uarg->session) ||
+	    put_user(arg.ret, &uarg->ret) ||
+	    put_user(arg.ret_origin, &uarg->ret_origin)) {
+		rc = -EFAULT;
+		goto out;
+	}
+	rc = params_to_user(uparams, arg.num_params, params);
+out:
+	/*
+	 * If we've succeeded to open the session but failed to communicate
+	 * it back to user space, close the session again to avoid leakage.
+	 */
+	if (rc && have_session && ctx->teedev->desc->ops->close_session)
+		ctx->teedev->desc->ops->close_session(ctx, arg.session);
+
+	if (params) {
+		/* Decrease ref count for all valid shared memory pointers */
+		for (n = 0; n < arg.num_params; n++)
+			if (tee_param_is_memref(params + n) &&
+			    params[n].u.memref.shm)
+				tee_shm_put(params[n].u.memref.shm);
+		kfree(params);
+	}
+
+	return rc;
+}
+
+static int tee_ioctl_invoke(struct tee_context *ctx,
+			    struct tee_ioctl_buf_data __user *ubuf)
+{
+	int rc;
+	size_t n;
+	struct tee_ioctl_buf_data buf;
+	struct tee_ioctl_invoke_arg __user *uarg;
+	struct tee_ioctl_invoke_arg arg;
+	struct tee_ioctl_param __user *uparams = NULL;
+	struct tee_param *params = NULL;
+
+	if (!ctx->teedev->desc->ops->invoke_func)
+		return -EINVAL;
+
+	if (copy_from_user(&buf, ubuf, sizeof(buf)))
+		return -EFAULT;
+
+	if (buf.buf_len > TEE_MAX_ARG_SIZE ||
+	    buf.buf_len < sizeof(struct tee_ioctl_invoke_arg))
+		return -EINVAL;
+
+	uarg = u64_to_user_ptr(buf.buf_ptr);
+	if (copy_from_user(&arg, uarg, sizeof(arg)))
+		return -EFAULT;
+
+	if (sizeof(arg) + TEE_IOCTL_PARAM_SIZE(arg.num_params) != buf.buf_len)
+		return -EINVAL;
+
+	if (arg.num_params) {
+		params = kcalloc(arg.num_params, sizeof(struct tee_param),
+				 GFP_KERNEL);
+		if (!params)
+			return -ENOMEM;
+		uparams = uarg->params;
+		rc = params_from_user(ctx, params, arg.num_params, uparams);
+		if (rc)
+			goto out;
+	}
+
+	rc = ctx->teedev->desc->ops->invoke_func(ctx, &arg, params);
+	if (rc)
+		goto out;
+
+	if (put_user(arg.ret, &uarg->ret) ||
+	    put_user(arg.ret_origin, &uarg->ret_origin)) {
+		rc = -EFAULT;
+		goto out;
+	}
+	rc = params_to_user(uparams, arg.num_params, params);
+out:
+	if (params) {
+		/* Decrease ref count for all valid shared memory pointers */
+		for (n = 0; n < arg.num_params; n++)
+			if (tee_param_is_memref(params + n) &&
+			    params[n].u.memref.shm)
+				tee_shm_put(params[n].u.memref.shm);
+		kfree(params);
+	}
+	return rc;
+}
+
+static int tee_ioctl_cancel(struct tee_context *ctx,
+			    struct tee_ioctl_cancel_arg __user *uarg)
+{
+	return -EINVAL;
+}
+
+static int
+tee_ioctl_close_session(struct tee_context *ctx,
+			struct tee_ioctl_close_session_arg __user *uarg)
+{
+	struct tee_ioctl_close_session_arg arg;
+
+	if (!ctx->teedev->desc->ops->close_session)
+		return -EINVAL;
+
+	if (copy_from_user(&arg, uarg, sizeof(arg)))
+		return -EFAULT;
+
+	return ctx->teedev->desc->ops->close_session(ctx, arg.session);
+}
+
+static int tee_ioctl(struct cdev *cdev, int cmd, void *arg)
+{
+	struct tee_context *ctx = cdev->priv;
+	void __user *uarg = (void __user *)arg;
+
+	switch (cmd) {
+	case TEE_IOC_VERSION:
+		return tee_ioctl_version(ctx, uarg);
+	case TEE_IOC_SHM_ALLOC:
+		return tee_ioctl_shm_alloc(ctx, uarg);
+	case TEE_IOC_SHM_REGISTER:
+		return tee_ioctl_shm_register(ctx, uarg);
+	case TEE_IOC_OPEN_SESSION:
+		return tee_ioctl_open_session(ctx, uarg);
+	case TEE_IOC_INVOKE:
+		return tee_ioctl_invoke(ctx, uarg);
+	case TEE_IOC_CANCEL:
+		return tee_ioctl_cancel(ctx, uarg);
+	case TEE_IOC_CLOSE_SESSION:
+		return tee_ioctl_close_session(ctx, uarg);
+	case TEE_IOC_SUPPL_RECV:
+		return -ENOSYS;
+	case TEE_IOC_SUPPL_SEND:
+		return -ENOSYS;
+	default:
+		return -EINVAL;
+	}
+}
+
+static const struct cdev_operations tee_cdev_ops = {
+	.open = tee_open,
+	.close = tee_release,
+	.ioctl = tee_ioctl,
+};
+
 static void tee_devinfo(struct device *dev)
 {
 	struct tee_device *teedev = dev->priv;
@@ -148,6 +535,11 @@ struct tee_device *tee_device_alloc(const struct tee_desc *teedesc,
 		goto err;
 	}
 
+	if (IS_ENABLED(CONFIG_OPTEE_DEVFS)) {
+		teedev->cdev.dev = &teedev->dev;
+		teedev->cdev.ops = &tee_cdev_ops;
+	}
+
 	/* 1 as tee_device_unregister() does one final tee_device_put() */
 	teedev->num_users = 1;
 	mutex_init(&teedev->mutex);
@@ -190,10 +582,22 @@ int tee_device_register(struct tee_device *teedev)
 	if (rc)
 		return rc;
 
+	if (IS_ENABLED(CONFIG_OPTEE_DEVFS)) {
+		teedev->cdev.name = teedev->dev.unique_name;
+
+		rc = devfs_create(&teedev->cdev);
+		if (rc)
+			goto out;
+	}
+
 	list_add_tail(&teedev->list, &tee_clients);
 
 	teedev->flags |= TEE_DEVICE_FLAG_REGISTERED;
 	return 0;
+
+out:
+	unregister_device(&teedev->dev);
+	return rc;
 }
 EXPORT_SYMBOL_GPL(tee_device_register);
 
@@ -236,6 +640,8 @@ void tee_device_unregister(struct tee_device *teedev)
 		return;
 
 	list_del(&teedev->list);
+	if (IS_ENABLED(CONFIG_OPTEE_DEVFS))
+		devfs_remove(&teedev->cdev);
 	unregister_device(&teedev->dev);
 }
 EXPORT_SYMBOL_GPL(tee_device_unregister);
diff --git a/drivers/tee/tee_private.h b/drivers/tee/tee_private.h
index ccd082c2c6bb..045f2df9f3b4 100644
--- a/drivers/tee/tee_private.h
+++ b/drivers/tee/tee_private.h
@@ -22,6 +22,7 @@ struct tee_context;
  * @id:		unique id of device
  * @flags:	represented by TEE_DEVICE_FLAG_REGISTERED above
  * @dev:	embedded basic device structure
+ * @cdev:	embedded cdev
  * @num_users:	number of active users of this device
  * @mutex:	mutex protecting @num_users and @idr
  */
@@ -32,11 +33,14 @@ struct tee_device {
 	unsigned int flags;
 
 	struct device dev;
+	struct cdev cdev;
 
 	size_t num_users;
 	struct mutex mutex;	/* protects num_users and idr */
 };
 
+int tee_shm_get_fd(struct tee_shm *shm);
+
 bool tee_device_get(struct tee_device *teedev);
 void tee_device_put(struct tee_device *teedev);
 
diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index acb74002bace..ea16c9cdd2e5 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -18,8 +18,13 @@ static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
 	if (shm->flags & TEE_SHM_DYNAMIC)
 		teedev->desc->ops->shm_unregister(shm->ctx, shm);
 
-	if (!(shm->flags & TEE_SHM_PRIV))
+	if (!(shm->flags & TEE_SHM_PRIV)) {
 		list_del(&shm->link);
+		if (IS_ENABLED(CONFIG_OPTEE_DEVFS)) {
+			devfs_remove(&shm->cdev);
+			unregister_device(&shm->dev);
+		}
+	}
 
 	if (shm->flags & TEE_SHM_POOL)
 		free(shm->kaddr);
@@ -31,6 +36,11 @@ static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
 	tee_device_put(teedev);
 }
 
+static const struct cdev_operations tee_shm_ops = {
+	.read = mem_read,
+	.memmap = generic_memmap_ro,
+};
+
 static struct tee_shm *
 register_shm_helper(struct tee_context *ctx, void *addr,
 		    size_t size, u32 flags)
@@ -53,14 +63,45 @@ register_shm_helper(struct tee_context *ctx, void *addr,
 		goto err;
 	}
 
+	shm->fd = -EBADF;
+	shm->dev.id = -EACCES;
 	shm->ctx = ctx;
 	shm->kaddr = addr;
 	shm->paddr = virt_to_phys(shm->kaddr);
 	shm->size = size;
 	shm->flags = flags;
 
-	if (!(flags & TEE_SHM_PRIV))
+	if (!(flags & TEE_SHM_PRIV)) {
+		if (IS_ENABLED(CONFIG_OPTEE_DEVFS)) {
+			shm->res.start = (resource_size_t)addr;
+			shm->res.end = (resource_size_t)(addr + size - 1);
+			shm->res.flags = IORESOURCE_MEM;
+
+			shm->dev.id = DEVICE_ID_DYNAMIC;
+			shm->dev.parent = &ctx->teedev->dev;
+			shm->dev.resource = &shm->res;
+			shm->dev.num_resources = 1;
+			rc = dev_set_name(&shm->dev, "%s-shm", ctx->teedev->dev.unique_name);
+			if (rc)
+				goto err;
+
+			rc = register_device(&shm->dev);
+			if (rc)
+				goto err;
+
+			shm->res.name = shm->dev.unique_name;
+
+			shm->cdev.dev = &shm->dev;
+			shm->cdev.ops = &tee_shm_ops;
+			shm->cdev.size = size;
+			shm->cdev.name = shm->dev.unique_name;
+			rc = devfs_create(&shm->cdev);
+			if (rc)
+				goto err;
+		}
+
 		list_add(&shm->link, &ctx->list_shm);
+	}
 
 	if (flags & TEE_SHM_DYNAMIC) {
 		rc = ctx->teedev->desc->ops->shm_register(ctx, shm);
@@ -70,13 +111,18 @@ register_shm_helper(struct tee_context *ctx, void *addr,
 
 	refcount_set(&shm->refcount, 1);
 
-	pr_debug("%s: shm=%p addr=%p size=%zu\n", __func__, shm,
-		 addr, size);
+	pr_debug("%s: shm=%p cdev=%s addr=%p size=%zu\n", __func__, shm,
+		 shm->cdev.name ?: "(priv)", addr, size);
 
 	return shm;
 err:
-	if (!(flags & TEE_SHM_PRIV))
+	if (!(flags & TEE_SHM_PRIV)) {
 		list_del(&shm->link);
+		if (IS_ENABLED(CONFIG_OPTEE_DEVFS)) {
+			devfs_remove(&shm->cdev);
+			unregister_device(&shm->dev);
+		}
+	}
 
 	free(shm);
 	teedev_ctx_put(ctx);
@@ -85,6 +131,22 @@ register_shm_helper(struct tee_context *ctx, void *addr,
 	return ERR_PTR(rc);
 }
 
+/**
+ * tee_shm_register_user_buf() - Register a userspace shared memory buffer
+ * @ctx:	Context that registers the shared memory
+ * @addr:	The userspace address of the shared buffer
+ * @length:	Length of the shared buffer
+ *
+ * @returns a pointer to 'struct tee_shm'
+ */
+struct tee_shm *tee_shm_register_user_buf(struct tee_context *ctx,
+					  unsigned long addr, size_t length)
+{
+	u32 flags = TEE_SHM_USER_MAPPED | TEE_SHM_DYNAMIC;
+
+	return register_shm_helper(ctx, (void *)addr, length, flags);
+}
+
 static struct tee_shm *shm_alloc_helper(struct tee_context *ctx, size_t size,
 					size_t align, u32 flags)
 {
@@ -104,6 +166,21 @@ static struct tee_shm *shm_alloc_helper(struct tee_context *ctx, size_t size,
 	return shm;
 }
 
+/**
+ * tee_shm_alloc_user_buf() - Allocate shared memory for user space
+ * @ctx:	Context that allocates the shared memory
+ * @size:	Requested size of shared memory
+ *
+ * Memory allocated as user space shared memory is automatically freed when
+ * the TEE file pointer is closed. The primary usage of this function is
+ * when the TEE driver doesn't support registering ordinary user space
+ * memory.
+ *
+ * @returns a pointer to 'struct tee_shm'
+ */
+struct tee_shm *tee_shm_alloc_user_buf(struct tee_context *ctx, size_t size)
+	__alias(tee_shm_alloc_kernel_buf);
+
 /**
  * tee_shm_alloc_kernel_buf() - Allocate shared memory for kernel buffer
  * @ctx:	Context that allocates the shared memory
@@ -147,6 +224,39 @@ struct tee_shm *tee_shm_alloc_priv_buf(struct tee_context *ctx, size_t size)
 }
 EXPORT_SYMBOL_GPL(tee_shm_alloc_priv_buf);
 
+/**
+ * tee_shm_get_fd() - Increase reference count and return file descriptor
+ * @shm:	Shared memory handle
+ * @returns user space file descriptor to shared memory
+ */
+int tee_shm_get_fd(struct tee_shm *shm)
+{
+	int fd;
+
+	if (!IS_ENABLED(CONFIG_OPTEE_DEVFS))
+		return -ENOSYS;
+
+	refcount_inc(&shm->refcount);
+
+	if (shm->fd < 0) {
+		char *tmp;
+
+		tmp = basprintf("/dev/%s", shm->cdev.name);
+		if (!tmp)
+			return -ENOMEM;
+
+		shm->fd = open(tmp, O_RDONLY);
+		free(tmp);
+	}
+
+	fd = shm->fd;
+
+	if (shm->fd < 0)
+		tee_shm_put(shm);
+
+	return fd;
+}
+
 /**
  * tee_shm_free() - Free shared memory
  * @shm:	Handle to shared memory to free
@@ -192,6 +302,28 @@ int tee_shm_get_pa(struct tee_shm *shm, size_t offs, phys_addr_t *pa)
 }
 EXPORT_SYMBOL_GPL(tee_shm_get_pa);
 
+/**
+ * tee_shm_get_from_id() - Find shared memory object and increase reference
+ * count
+ * @ctx:	Context owning the shared memory
+ * @id:		Id of shared memory object
+ * @returns a pointer to 'struct tee_shm' on success or an ERR_PTR on failure
+ */
+struct tee_shm *tee_shm_get_from_id(struct tee_context *ctx, int id)
+{
+	struct tee_shm *shm;
+
+	list_for_each_entry(shm, &ctx->list_shm, link) {
+		if (shm->dev.id == id) {
+			refcount_inc(&shm->refcount);
+			return shm;
+		}
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(tee_shm_get_from_id);
+
 /**
  * tee_shm_put() - Decrease reference count on a shared memory handle
  * @shm:	Shared memory handle
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
index e5f0344d4d06..4a5cb0f0a50f 100644
--- a/include/linux/tee_drv.h
+++ b/include/linux/tee_drv.h
@@ -182,6 +182,9 @@ int tee_session_calc_client_uuid(uuid_t *uuid, u32 connection_method,
  * @refcount:	reference counter
  * @flags:	defined by TEE_SHM_* in tee_drv.h
  * @link:	list head for registering object globally
+ * @fd:		file descriptor for use in userspace
+ * @dev:	device for registering shared memory
+ * @res:	resource to be associated with device
  *
  * This pool is only supposed to be accessed directly from the TEE
  * subsystem and from drivers that implements their own shm pool manager.
@@ -194,6 +197,11 @@ struct tee_shm {
 	refcount_t refcount;
 	u32 flags;
 	struct list_head link;
+
+	int fd;
+	struct device_d dev;
+	struct cdev cdev;
+	struct resource res;
 };
 
 /**
@@ -205,6 +213,10 @@ void *tee_get_drvdata(struct tee_device *teedev);
 struct tee_shm *tee_shm_alloc_priv_buf(struct tee_context *ctx, size_t size);
 struct tee_shm *tee_shm_alloc_kernel_buf(struct tee_context *ctx, size_t size);
 
+struct tee_shm *tee_shm_alloc_user_buf(struct tee_context *ctx, size_t size);
+struct tee_shm *tee_shm_register_user_buf(struct tee_context *ctx,
+					  unsigned long addr, size_t length);
+
 /**
  * tee_shm_is_dynamic() - Check if shared memory object is of the dynamic kind
  * @shm:	Shared memory handle
@@ -256,6 +268,27 @@ static inline size_t tee_shm_get_size(struct tee_shm *shm)
 	return shm->size;
 }
 
+/**
+ * tee_shm_get_id() - Get id of a shared memory object
+ * @shm:	Shared memory handle
+ * @returns id
+ */
+static inline int tee_shm_get_id(struct tee_shm *shm)
+{
+	/* Only call on non-private SHMs */
+	BUG_ON(shm->dev.id < 0);
+	return shm->dev.id;
+}
+
+/**
+ * tee_shm_get_from_id() - Find shared memory object and increase reference
+ * count
+ * @ctx:	Context owning the shared memory
+ * @id:		Id of shared memory object
+ * @returns a pointer to 'struct tee_shm' on success or an ERR_PTR on failure
+ */
+struct tee_shm *tee_shm_get_from_id(struct tee_context *ctx, int id);
+
 /**
  * tee_client_open_context() - Open a TEE context
  * @start:	if not NULL, continue search after this context
-- 
2.39.2



