Delivery-date: Mon, 13 Feb 2023 09:46:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRUUG-0062Ih-DR
	for lore@lore.pengutronix.de; Mon, 13 Feb 2023 09:46:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRUUD-0008OO-Kb
	for lore@pengutronix.de; Mon, 13 Feb 2023 09:46:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZkSeWx0tly3dgYMfjbUP96BedZtE1ySeZ0KYq6xygyk=; b=kqgiGEX6Z24Y8QKgOCkFk1rdzK
	dQaDZ5OLtt7cNAmzfiXlO3bbLNvIX2vJ73q8fr7CPh5jXkkf1keA3QJuxyfX1gU+m0thEw6POLlVe
	1AxlgxEiRRl9vKOPq+JP2M0bbJpUyfkgOCCmik2Z0x+9Y9x0Gw0FfxN+z4Kgf9v1HrL3hR5TgD37g
	UCGSKRm9UsgEwFWuFbODMrAD+T8Dyz++7akbHWVADMRF4WFc+nsQcRYRhJjfPQqTAELPn0aIKalGs
	l9kNtL5JrNUYCUPqkHagtu3o+T4OcanRhJRbN3n+uk72++1IKrBE7TGdP8WCUcfp6L/rldIcn8mTL
	HtMQwp4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRUSf-00DeNw-Tu; Mon, 13 Feb 2023 08:45:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRUSa-00DeLt-5g
	for barebox@lists.infradead.org; Mon, 13 Feb 2023 08:45:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRUSW-00084h-DM; Mon, 13 Feb 2023 09:45:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRUSW-0006Z6-67; Mon, 13 Feb 2023 09:45:12 +0100
Date: Mon, 13 Feb 2023 09:45:12 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230213084512.GF10447@pengutronix.de>
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
 <20230210165353.3601175-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230210165353.3601175-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_004516_235098_11E39295 
X-CRM114-Status: GOOD (  31.76  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/4] boards: qemu-virt: support passing in FIT public
 key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 10, 2023 at 05:53:53PM +0100, Ahmad Fatoum wrote:
> FIT public key is usually passed in via board DT. Usual way to use
> barebox with QEMU Virt however is to use DT supplied by Qemu and apply
> overlay to it. mkimage doesn't generate overlay DTB though. To make
> barbebox Qemu Virt behave like other boards, let's define a dummy DT
> that includes CONFIG_BOOTM_FITIMAGE_PUBKEY, which is merged with the
> barebox live device tree.
> 
> Suggested-by: Jan Lübbe <jlu@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - no changes
> ---
>  common/boards/qemu-virt/Makefile            | 2 +-
>  common/boards/qemu-virt/board.c             | 7 ++++++-
>  common/boards/qemu-virt/fitimage-pubkey.dts | 7 +++++++
>  3 files changed, 14 insertions(+), 2 deletions(-)
>  create mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts
> 
> diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
> index 88184e9a7969..00bfdfbda696 100644
> --- a/common/boards/qemu-virt/Makefile
> +++ b/common/boards/qemu-virt/Makefile
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
>  obj-y += board.o
> -obj-y += overlay-of-flash.dtb.o
> +obj-y += overlay-of-flash.dtb.o fitimage-pubkey.dtb.o
>  ifeq ($(CONFIG_RISCV),y)
>  DTC_CPP_FLAGS_overlay-of-flash.dtb := -DRISCV_VIRT=1
>  endif
> diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
> index ec92ae94aec9..2669e9de5a2a 100644
> --- a/common/boards/qemu-virt/board.c
> +++ b/common/boards/qemu-virt/board.c
> @@ -35,10 +35,11 @@ static inline void arm_virt_init(void) {}
>  #endif
>  
>  extern char __dtb_overlay_of_flash_start[];
> +extern char __dtb_fitimage_pubkey_start[];
>  
>  static int virt_probe(struct device *dev)
>  {
> -	struct device_node *overlay;
> +	struct device_node *overlay, *pubkey;
>  	void (*init)(void);
>  
>  	init = device_get_match_data(dev);
> @@ -47,6 +48,10 @@ static int virt_probe(struct device *dev)
>  
>  	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
>  	of_overlay_apply_tree(dev->of_node, overlay);
> +
> +	pubkey = of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
> +	of_merge_nodes(dev->of_node, pubkey);
> +
>  	/* of_probe() will happen later at of_populate_initcall */
>  
>  	return 0;
> diff --git a/common/boards/qemu-virt/fitimage-pubkey.dts b/common/boards/qemu-virt/fitimage-pubkey.dts
> new file mode 100644
> index 000000000000..497799fa4b60
> --- /dev/null
> +++ b/common/boards/qemu-virt/fitimage-pubkey.dts
> @@ -0,0 +1,7 @@
> +/dts-v1/;
> +
> +#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
> +#include CONFIG_BOOTM_FITIMAGE_PUBKEY
> +#endif

I wonder if we've gone the wrong path here. Every board that wants to
put a key into the device tree needs this snippet.

Instead of compiling the dtsi containing the key into the barebox main
device tree wouldn't it be better to always create an extra dtb from
the dtsi provdided in CONFIG_BOOTM_FITIMAGE_PUBKEY and apply something
along the following?

What's missing is some Makefile magic to compile an extra dtb named
fitimage_pubkey from whatever name is provided in
CONFIG_BOOTM_FITIMAGE_PUBKEY, but that should be doable as well.


diff --git a/crypto/rsa.c b/crypto/rsa.c
index fc21efdb6d..6939513db9 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -491,16 +491,13 @@ static struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
 extern const struct rsa_public_key * const __rsa_keys_start;
 extern const struct rsa_public_key * const __rsa_keys_end;
 
-static void rsa_init_keys_of(void)
+static void rsa_init_keys_of(struct device_node *root)
 {
 	struct device_node *sigs, *sig;
 	struct rsa_public_key *key;
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_OFTREE))
-		return;
-
-	sigs = of_find_node_by_path("/signature");
+	sigs = of_find_node_by_path_from(root, "/signature");
 	if (!sigs)
 		return;
 
@@ -519,6 +516,26 @@ static void rsa_init_keys_of(void)
 	}
 }
 
+extern char __dtb_fitimage_pubkey_start[];
+
+static void rsa_of_init_keys(void)
+{
+	struct device_node *root;
+
+	if (!IS_ENABLED(CONFIG_OFTREE))
+		return;
+
+	root = of_get_root_node();
+	if (root)
+		rsa_init_keys_of(root);
+
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+	root = of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
+	if (root)
+		rsa_init_keys_of(root);
+#endif
+}
+
 static int rsa_init_keys(void)
 {
 	const struct rsa_public_key * const *iter;
@@ -533,7 +550,7 @@ static int rsa_init_keys(void)
 			       key->key_name_hint, strerror(-ret));
 	}
 
-	rsa_init_keys_of();
+	rsa_of_init_keys();
 
 	return 0;
 }
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


