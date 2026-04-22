Delivery-date: Wed, 22 Apr 2026 11:16:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFTha-00F31L-1F
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 11:16:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFThZ-0007So-KT
	for lore@pengutronix.de; Wed, 22 Apr 2026 11:16:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RgW0Yy55x7aOAlFi23eDy2o1a1WBZ8SAqqZ7VoNP3iU=; b=47o3N9Tejp0va8DDSKDWlclAD0
	+FCugao7MvRobDvmZ4ZO0kLK+H6zqvFfuHXE3saI7Z+7/+E9wkyuqBSMDbacZVJM0uUJaE3BiL1kZ
	qa6ZLekV4x+uCU50pZbMIiY4QoEfZydRA2uq4Ho+dCQ/vSos98IOKhEFXet6an1XehBpY7su58q2m
	OXtesiM+pKZ/xNX10YMmN8wnh7e766R7E9Z+os5YS8PkRFjLYc2l9r5+B0gxFPnXCXwFVJtMabGR2
	v6308IgzuBaQuz1wzJfLf668q26/Zk+aQi4EaUokJQ6Nl93j6DO/hC99xwMrFsDITtZPgNfKu1S0b
	wJAgIiVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFTh8-00000009pUW-2Ozf;
	Wed, 22 Apr 2026 09:16:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFTh3-00000009pTu-019P
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 09:16:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wFTh1-0007MT-D1; Wed, 22 Apr 2026 11:16:23 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wFTh1-006dvk-0h;
	Wed, 22 Apr 2026 11:16:23 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wFTh1-00000008KaL-0Ubd;
	Wed, 22 Apr 2026 11:16:23 +0200
Date: Wed, 22 Apr 2026 11:16:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <aeiR55jQR56V3YDQ@pengutronix.de>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
 <20260415-v2026-03-0-topic-soc_bin_id-v2-1-81fab6ba5de0@pengutronix.de>
 <aeh_ExzusLb9PCX3@pengutronix.de>
 <479b96ec421925a887ad63f65a5c00478caac431.camel@pengutronix.de>
 <aeiF3Z6yDuuy3IoD@pengutronix.de>
 <86d49148492685a515b669a05995b89570de6f79.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <86d49148492685a515b669a05995b89570de6f79.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_021625_067276_F30D1CAB 
X-CRM114-Status: GOOD (  49.63  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] common: misc: add soc_uid_hex to globalvar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 22, 2026 at 10:52:34AM +0200, Fabian Pflug wrote:
> On Wed, 2026-04-22 at 10:25 +0200, Sascha Hauer wrote:
> > On Wed, Apr 22, 2026 at 10:14:11AM +0200, Fabian Pflug wrote:
> > > On Wed, 2026-04-22 at 09:56 +0200, Sascha Hauer wrote:
> > > > On Wed, Apr 15, 2026 at 01:10:21PM +0200, Fabian Pflug wrote:
> > > > > uidstr and uidbuf could be the same, but don't have to be. This results
> > > > > in uncertainty on what exactly is the current UID used for
> > > > > machine_set_hashable and to compare against with TLV.
> > > > > 
> > > > > Add an additional global var, that encodes SoC-UID registers in a
> > > > > manner uniform across SoCs/manufacturers.
> > > > > 
> > > > > This can now be used to feed as data for bound-soc-uid into
> > > > > `bareboxtlv-generator.py` or as the value for
> > > > > `CONFIG_HABV4_CSF_UNLOCK_UID`
> > > > > 
> > > > > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > > > > ---
> > > > >  common/misc.c | 9 +++++++--
> > > > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/common/misc.c b/common/misc.c
> > > > > index ecf9574f7a..be896706d6 100644
> > > > > --- a/common/misc.c
> > > > > +++ b/common/misc.c
> > > > > @@ -268,6 +268,7 @@ const uuid_t *barebox_get_product_uuid(void)
> > > > >  BAREBOX_MAGICVAR(global.product.uuid, "SMBIOS-reported product UUID");
> > > > >  
> > > > >  static char *soc_uid_str;
> > > > > +static char *soc_uid_bin_str;
> > > > >  static void *soc_uid;
> > > > >  static size_t soc_uid_len;
> > > > >  
> > > > > @@ -295,18 +296,22 @@ void barebox_set_soc_uid(const char *uidstr, const void *uidbuf, size_t len)
> > > > >  	soc_uid = xmemdup(uidbuf, len);
> > > > >  	soc_uid_len = len;
> > > > >  
> > > > > +	soc_uid_bin_str = xzalloc(len * 2 + 1);
> > > > > +	bin2hex(soc_uid_bin_str, uidbuf, len);
> > > > > +
> > > > >  	if (uidstr) {
> > > > >  		soc_uid_str = xstrdup(uidstr);
> > > > >  	} else {
> > > > > -		soc_uid_str = xzalloc(len * 2 + 1);
> > > > > -		bin2hex(soc_uid_str, uidbuf, len);
> > > > > +		soc_uid_str = soc_uid_bin_str;
> > > > >  	}
> > > > >  
> > > > >  	machine_id_set_hashable(uidbuf, len);
> > > > >  
> > > > >  	globalvar_add_simple_string("soc_uid", &soc_uid_str);
> > > > > +	globalvar_add_simple_string("soc_uid_hex", &soc_uid_bin_str);
> > > > 
> > > > barebox_set_soc_uid() takes two arguments, the raw SoC UID data and a
> > > > SoC specific string representation of that data. It's unfortunate that
> > > > you need two different interpretations of the raw data on i.MX, one to
> > > > match the Linux /sys/ format and one to put into the CSF file.
> > > > 
> > > > Anyway, just adding a second string representation not only for i.MX,
> > > > but also for all other SoCs is rather confusing. For the i.MX field
> > > > return case we could also add a hab command option or a i.MX specific
> > > > globalvar which is exactly described as "SoC UID in the format the CSF
> > > > needs"
> > > 
> > > Please don't get confused. This is an additional benefit for the CSF in i.MX. The main focus here is to have a
> > > string
> > > representation, that can be used in TLV generation, with the script in 
> > > https://github.com/barebox/barebox/blob/master/scripts/bareboxtlv-generator/bareboxtlv-generator.py
> > > 
> > > The value 
> > > 0x0024, bound-soc-uid, "Reject TLV if supplied binary data does not match UID SoC register"
> > > https://github.com/barebox/barebox/blob/v2026.04.0/common/tlv/barebox.c#L200
> > > 
> > > Needs this representation for all vendors, not just i.MX.
> > > And since the values for soc_bin and uidstr can differ greatly, it is very soc specific on what value to use in the
> > > https://github.com/barebox/barebox/blob/master/scripts/bareboxtlv-generator/data-example.yaml
> > > 
> > > This patch tries to fix it, by giving a value, that can just be copied to TLC data.yaml
> > 
> > Ok, I can much better buy TLV support as an argument.
> > 
> > Please add a
> > 
> > BAREBOX_MAGICVAR(global.soc_uid_hex,
> >           "byte array representation of the raw SoC UID");
> 
> There already is
> 
> BAREBOX_MAGICVAR(global.soc_uid_hex, "SoC Unique ID (in hex)");
> 
> And since it is a single value and not a byte array, I think byte array is the wrong representation.
> Using a byte-array for TLV does not work with the TLV tooling. This expects a single value.

You are right, byte array is not the correct term here. What I wanted to
make clear is that it is the raw buffer content with the first byte in
the buffer being the first two digits of the string, just to make the
difference between these two clearer:

global.soc_uid=0011223344556677		"SoC Unique ID"
global.soc_uid_hex=7766554433221100	"SoC Unique ID (in hex)"

Both are obviously hex values, which one means what?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


