Delivery-date: Tue, 27 May 2025 10:47:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJpyN-000nd9-1A
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 10:47:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJpyM-0007FU-Km
	for lore@pengutronix.de; Tue, 27 May 2025 10:47:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kHB/oYwwXJ4okqfcmYqHfVkUEzqpteNa8sLicSrsfqA=; b=uuobFLBPuQW1X++jDXiCCXuBeF
	SEhOcA/wAlj09GBoCgrvT1JDi14Md1soGGVcTNE+QajTDy/WIPC5i2crx0r7gwvbWqZgF+ySjGI16
	Cpra7e/5yroQ+k7fy7cZGhSgxA+59FYl4RWgihV0RF6YEqHB6O53y1tMDG0CUKzZvdHQzWC/FT9YB
	yEgXziKhOG4Jk5/IEclxNuFKUH0kbwru3Yq/gXX5x+/+39D397E3j+K58jCG/e0RZvuD7hKtISB3s
	TcTaq0cSgOavvYc+850FCqhWLOkKAQPaExv3+tSfl09UScIPZCsev2Z1zqNo4FAu6QxKd29xdJVJd
	tGkIoehw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJpxr-0000000AIAn-0myl;
	Tue, 27 May 2025 08:47:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJplz-0000000AGXM-3H92
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 08:35:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJply-00059O-It; Tue, 27 May 2025 10:34:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJply-000OA0-1I;
	Tue, 27 May 2025 10:34:58 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJply-00CSdW-10;
	Tue, 27 May 2025 10:34:58 +0200
Date: Tue, 27 May 2025 10:34:58 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aDV5MuI74I-RK5GT@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-6-5004995cbd03@pengutronix.de>
 <aDVaFl2OFfqev_Fv@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aDVaFl2OFfqev_Fv@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_013459_829129_57918D88 
X-CRM114-Status: GOOD (  36.62  )
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
X-Spam-Status: No, score=-6.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/9] PBL: fdt: add fdt_fixup_mem to fixup memory nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 27 May 2025 08:22:14 +0200, Sascha Hauer wrote:
> On Mon, May 26, 2025 at 04:38:12PM +0200, Michael Tretter wrote:
> > Board code in the PBL may use fdt_fixup_mem() to write the base
> > addresses and sizes of detected SDRAM to the fdt before passing the fdt
> > to other software like the TF-A and OP-TEE.
> > 
> > This is implemented on the fdt to avoid that the PBL needs to unpack the
> > device tree, use the of function for manipulation and repack the device
> > tree.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  include/pbl.h |  1 +
> >  pbl/fdt.c     | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  2 files changed, 72 insertions(+)
> > 
> > diff --git a/include/pbl.h b/include/pbl.h
> > index abac3458593af2cec972a54ce9fb69e344179670..b330010562c4aba5fccbb4c421bb95291fa0bea1 100644
> > --- a/include/pbl.h
> > +++ b/include/pbl.h
> > @@ -17,6 +17,7 @@ extern unsigned long free_mem_end_ptr;
> >  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
> >  
> >  void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
> > +int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num);
> >  
> >  struct fdt_device_id {
> >  	const char *compatible;
> > diff --git a/pbl/fdt.c b/pbl/fdt.c
> > index 3b1783152a8cb81f3eda1187b2f7bf998c4addf4..40564952acfcd88bef050966720e76b7378bc720 100644
> > --- a/pbl/fdt.c
> > +++ b/pbl/fdt.c
> > @@ -2,6 +2,7 @@
> >  #include <linux/libfdt.h>
> >  #include <pbl.h>
> >  #include <linux/printk.h>
> > +#include <stdio.h>
> >  
> >  static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
> >  				   uint64_t *val)
> > @@ -73,6 +74,76 @@ void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsiz
> >  	while (1);
> >  }
> >  
> > +int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num)
> > +{
> > +	int na, ns;
> > +	int node, root;
> > +	int err;
> > +	int i;
> > +
> > +	err = fdt_check_header(fdt);
> > +	if (err != 0) {
> > +		pr_err("Invalid device tree blob\n");
> > +		return err;
> > +	}
> > +
> > +	root = fdt_path_offset(fdt, "/");
> > +	if (root < 0) {
> > +		pr_err("Cannot find root node: %s\n", fdt_strerror(root));
> > +		return root;
> > +	}
> > +
> > +	na = fdt_address_cells(fdt, root);
> > +	if (na < 0) {
> > +		pr_err("Cannot find #address-cells property: %s\n",
> > +		       fdt_strerror(na));
> > +		return na;
> > +	}
> > +
> > +	ns = fdt_size_cells(fdt, root);
> > +	if (ns < 0) {
> > +		pr_err("Cannot find #size-cells property: %s\n",
> > +				fdt_strerror(ns));
> > +		return ns;
> > +	}
> 
> fdt_appendprop_addrrange() handles #address-cells and #size-cells
> internally, consequently na and ns are not used in this function.

That's a leftover of a previous implementation. I'll drop it.

> 
> > +
> > +	for (i = 0; i < num; i++) {
> > +		char name[32];
> > +
> > +		if (membase[i] == 0 || memsize[i] == 0)
> > +			continue;
> > +
> > +		snprintf(name, sizeof(name), "memory@%lx", membase[i]);
> > +		node = fdt_add_subnode(fdt, root, name);
> 
> There are some pitfalls in this function when the device tree already
> has memory nodes. It seems fdt_add_subnode() returns -FDT_ERR_EXISTS
> in case the node already exists. You should likely check that.

In this case, the error handling gets even more complex. If the device
tree node already exists and the size specified in the node doesn't
match the size passed to the function, the function has to decide which
value should get precedence. Probably the value passed to the function.

In this case, fdt_fixup_mem() will be able to fixup existing nodes and
add new nodes if the nodes do not exist.

If fdt_fixup_mem() is able to fixup existing nodes, it should really try
hard to find the correct existing node, which will add more complexity.
This needs some tests.

However, I'm not sure if we really want this complexity in the PBL.

> 
> Some device trees have a plain "memory" node without the @address
> postfix. These should be deleted before adding other memory nodes.

OK. That's similar to what of_memory_fixup is doing. I'll add this.

> 
> > +		if (node < 0) {
> > +			pr_err("Cannot to add node %s: %s\n",
> > +			       name, fdt_strerror(node));
> > +			err = node;
> > +			break;
> > +		}
> > +
> > +		pr_debug("Add memory node %s (0x%lx, size 0x%lx)\n",
> > +			 name, membase[i], memsize[i]);
> > +
> > +		err = fdt_setprop(fdt, node,
> > +				  "device_type", "memory", sizeof("memory"));
> > +		if (err < 0) {
> > +			pr_err("%s: Cannot set device_type: %s\n",
> > +			       name, fdt_strerror(err));
> > +			return err;
> > +		}
> > +
> > +		err = fdt_appendprop_addrrange(fdt, root, node, "reg", membase[i], memsize[i]);
> 
> This sounds like it appends the range to ranges already existing in the
> node. Do you have to call fdt_delprop(..., "reg") beforehand?

Right now, this is not necessary, because the node is a newly created
node and doesn't have the "reg" property. If the function is changed to
update existing nodes, the property probably has to be cleared.

Michael


