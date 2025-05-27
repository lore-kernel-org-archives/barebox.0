Delivery-date: Tue, 27 May 2025 08:24:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnjI-000lfa-2S
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 08:24:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnjI-0002Yg-2Y
	for lore@pengutronix.de; Tue, 27 May 2025 08:24:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fyxN7sVbQ2D8DcYbBZOhuebjDxbE8Del7DYPvSIzgx4=; b=U4aEzbNzVF6grmHApI9dhu5EAt
	aFkk9sYJ58I4+iXKzDLcn6dE2Z08j10EkCSAvreZ7+zVp7kOWKxWWjT+WLbvBrfpdDjZI1nctUdEN
	M+LMK6qm3E7GQbKpxByLYRg7D8C+V8QFbLjy6ralmruDZ776+mIEemw3/4X9lD43/NXEmhVuDqO0G
	dMDwjTp+WcZU18NxYur2+UgSP8C0ccXZBH6zC9qQ8kVtX6NVnUaCb7s/plzbytOd0NNtLFnbhO2ci
	bZjVIavY7g09tAVVbPXufky9hrlL7QXJSCh0niJxS6djH8e9DAZ5xeMH5FTLlF1gePLtooxtpqJzV
	dY493JUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnia-0000000A1J5-3z21;
	Tue, 27 May 2025 06:23:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnhZ-0000000A1CG-2TfR
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 06:22:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uJnhW-0002J4-AW; Tue, 27 May 2025 08:22:14 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uJnhW-000N9R-0S;
	Tue, 27 May 2025 08:22:14 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uJnhW-00CQNR-06;
	Tue, 27 May 2025 08:22:14 +0200
Date: Tue, 27 May 2025 08:22:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aDVaFl2OFfqev_Fv@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-6-5004995cbd03@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250526-rk3588-optee-v1-6-5004995cbd03@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_232217_633375_2CBE9130 
X-CRM114-Status: GOOD (  31.85  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/9] PBL: fdt: add fdt_fixup_mem to fixup memory nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, May 26, 2025 at 04:38:12PM +0200, Michael Tretter wrote:
> Board code in the PBL may use fdt_fixup_mem() to write the base
> addresses and sizes of detected SDRAM to the fdt before passing the fdt
> to other software like the TF-A and OP-TEE.
> 
> This is implemented on the fdt to avoid that the PBL needs to unpack the
> device tree, use the of function for manipulation and repack the device
> tree.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  include/pbl.h |  1 +
>  pbl/fdt.c     | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 72 insertions(+)
> 
> diff --git a/include/pbl.h b/include/pbl.h
> index abac3458593af2cec972a54ce9fb69e344179670..b330010562c4aba5fccbb4c421bb95291fa0bea1 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -17,6 +17,7 @@ extern unsigned long free_mem_end_ptr;
>  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
>  
>  void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
> +int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num);
>  
>  struct fdt_device_id {
>  	const char *compatible;
> diff --git a/pbl/fdt.c b/pbl/fdt.c
> index 3b1783152a8cb81f3eda1187b2f7bf998c4addf4..40564952acfcd88bef050966720e76b7378bc720 100644
> --- a/pbl/fdt.c
> +++ b/pbl/fdt.c
> @@ -2,6 +2,7 @@
>  #include <linux/libfdt.h>
>  #include <pbl.h>
>  #include <linux/printk.h>
> +#include <stdio.h>
>  
>  static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
>  				   uint64_t *val)
> @@ -73,6 +74,76 @@ void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsiz
>  	while (1);
>  }
>  
> +int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num)
> +{
> +	int na, ns;
> +	int node, root;
> +	int err;
> +	int i;
> +
> +	err = fdt_check_header(fdt);
> +	if (err != 0) {
> +		pr_err("Invalid device tree blob\n");
> +		return err;
> +	}
> +
> +	root = fdt_path_offset(fdt, "/");
> +	if (root < 0) {
> +		pr_err("Cannot find root node: %s\n", fdt_strerror(root));
> +		return root;
> +	}
> +
> +	na = fdt_address_cells(fdt, root);
> +	if (na < 0) {
> +		pr_err("Cannot find #address-cells property: %s\n",
> +		       fdt_strerror(na));
> +		return na;
> +	}
> +
> +	ns = fdt_size_cells(fdt, root);
> +	if (ns < 0) {
> +		pr_err("Cannot find #size-cells property: %s\n",
> +				fdt_strerror(ns));
> +		return ns;
> +	}

fdt_appendprop_addrrange() handles #address-cells and #size-cells
internally, consequently na and ns are not used in this function.

> +
> +	for (i = 0; i < num; i++) {
> +		char name[32];
> +
> +		if (membase[i] == 0 || memsize[i] == 0)
> +			continue;
> +
> +		snprintf(name, sizeof(name), "memory@%lx", membase[i]);
> +		node = fdt_add_subnode(fdt, root, name);

There are some pitfalls in this function when the device tree already
has memory nodes. It seems fdt_add_subnode() returns -FDT_ERR_EXISTS
in case the node already exists. You should likely check that.

Some device trees have a plain "memory" node without the @address
postfix. These should be deleted before adding other memory nodes.

> +		if (node < 0) {
> +			pr_err("Cannot to add node %s: %s\n",
> +			       name, fdt_strerror(node));
> +			err = node;
> +			break;
> +		}
> +
> +		pr_debug("Add memory node %s (0x%lx, size 0x%lx)\n",
> +			 name, membase[i], memsize[i]);
> +
> +		err = fdt_setprop(fdt, node,
> +				  "device_type", "memory", sizeof("memory"));
> +		if (err < 0) {
> +			pr_err("%s: Cannot set device_type: %s\n",
> +			       name, fdt_strerror(err));
> +			return err;
> +		}
> +
> +		err = fdt_appendprop_addrrange(fdt, root, node, "reg", membase[i], memsize[i]);

This sounds like it appends the range to ranges already existing in the
node. Do you have to call fdt_delprop(..., "reg") beforehand?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


