Delivery-date: Fri, 16 Jan 2026 16:17:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vglZi-0020KR-0f
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 16:17:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vglZh-0005br-7a
	for lore@pengutronix.de; Fri, 16 Jan 2026 16:17:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dj417Q3hT3/QR1iuC+OGWWLwvWDvIYpQAjkZutcNlBM=; b=JFtu8ESyozjoDMS0Nvzw8KS+Dm
	8yyhXUj/xXxKmYThxmHoOBqq/XSysVBCHd/yRVsJnoYvX9GG33w1Vs43+I+pzAN+9oaOS+m7zvR5G
	D3yaYdbGh+cAvynkEHIaikQ7X3e1GbAfycu01VMcXYrSYRFigZ6TDcxhhUB4kGYn/PTVsdYeQ/2Lf
	UGXLeqOvvMEjMBrr7ERKNl9ptARTL9zkp0avcwvrMy8WLn17GKlwipLfWMGwRtdrLoco17i/zU2Tv
	M4N9fujvmceuWGKx+77VC6gcYbsfJNOHpGPDjjelTn2eFUOe7l/FdG0vDOTbong9bhdfDnGdNWAMc
	n9saVRrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglZ0-0000000EKuj-1P8I;
	Fri, 16 Jan 2026 15:16:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglYx-0000000EKuM-3GTF
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 15:16:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vglYu-0005Gx-Ne; Fri, 16 Jan 2026 16:16:32 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vglYv-000wYy-0D;
	Fri, 16 Jan 2026 16:16:32 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vglYu-00FWlv-0w;
	Fri, 16 Jan 2026 16:16:32 +0100
Date: Fri, 16 Jan 2026 16:16:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, David Dgien <dgienda125@gmail.com>
Message-ID: <aWpWUM8I_h5EbeIQ@pengutronix.de>
References: <20260115115924.3428886-1-a.fatoum@barebox.org>
 <20260115115924.3428886-3-a.fatoum@barebox.org>
 <aWn36P7Q9UKkpkkd@pengutronix.de>
 <84b47759-5755-4c55-9d50-2ee9e05ff6b8@barebox.org>
 <e5804811-a23c-4a23-a8bc-c75582260a54@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5804811-a23c-4a23-a8bc-c75582260a54@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_071635_816932_4205FF8C 
X-CRM114-Status: GOOD (  24.27  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/12] ARM: qemu-virt: add image for use as -bios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 16, 2026 at 01:52:46PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 1/16/26 11:21 AM, Ahmad Fatoum wrote:
> > Hi,
> > 
> > On 1/16/26 09:33, Sascha Hauer wrote:
> >> On Thu, Jan 15, 2026 at 12:54:28PM +0100, Ahmad Fatoum wrote:
> >>> +	printf("Using %s device tree at %p\n", origin, fdt);
> >>
> >> Doesn't make a difference for PBL, but I think pr_info would be more
> >> appropriate here.
> > 
> > Sure.
> > 
> >>>  #define BAREBOX_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
> >>> diff --git a/test/arm/virt-el2@multi_v8_defconfig.yaml b/test/arm/virt-el2@multi_v8_defconfig.yaml
> >>> new file mode 100644
> >>> index 000000000000..8aa514fb4179
> >>> --- /dev/null
> >>> +++ b/test/arm/virt-el2@multi_v8_defconfig.yaml
> >>
> >> You anticipated ARM32 above, how about adding these for
> >> multi_v7_defconfig as well?
> > 
> > Ah, the name is misleading anyway, because it still runs in EL1 (which is good,
> > as we can use hvc for PSCI, but I was not aware of that yet when I named the
> > file).
> > 
> > I can rename and add a new v7 YAML in v2.
> 
> Are you done reading through the series or should I wait before sending
> v2 some more?

I'm done.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


