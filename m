Delivery-date: Thu, 07 Sep 2023 12:44:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeCUs-0071x4-1o
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 12:44:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeCUp-0002S0-Tj
	for lore@pengutronix.de; Thu, 07 Sep 2023 12:44:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZEfdvQ0H11ke3GXCV8SlBSHE7s+AyZDd+eofkqw4okk=; b=F/0os94MgDrk8RPNDPJ/j/RN3g
	U5lG2n4y2ChVPD/8uWgC1uRvnEa38nID2sj+uf98oAHCsQ1ZXF2gApOFa3U1HRE/20Egy/eo+k2xt
	5Dtw0cfzqz5w8SJ4kzFO2JubHb39229OmpKsAOseg6dXbNJJsRF+p301Kin3TwX4CRnNmmpw+XLDE
	dNOnduXwrXGvm/ukGZh25EDV6i1xHhGphAqTl0T37rsocMIVPK0Et5u/QO7YKd1aJbhHpI1P3Frgh
	ooyjeaVr22ZDBw8KMNy8cXEwFY7XOLPLpysw9KiojLmIHfHQswQe0ofxY2cW0LTub7xiip9FgOhId
	A5pIygEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeCTS-00BniH-37;
	Thu, 07 Sep 2023 10:42:58 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeCTP-00Bnhy-2N
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 10:42:57 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 379DF1BF208;
	Thu,  7 Sep 2023 10:42:47 +0000 (UTC)
Date: Thu, 7 Sep 2023 12:42:46 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZPmpJknjZd3r6udX@tour>
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
 <393f8933-d264-e4a2-4497-39c8240796e7@pengutronix.de>
 <ZPmem2k04HWDFbAz@tour>
 <6e500781-d330-aa07-7c29-ec49b86ec8bd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e500781-d330-aa07-7c29-ec49b86ec8bd@pengutronix.de>
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_034255_941127_2326E6F5 
X-CRM114-Status: GOOD (  24.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] decompressors: Update xz to include ARM64 BCJ decoder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Thu, Sep 07, 2023 at 12:08:34PM +0200, Ahmad Fatoum wrote:
> Hello Jules,
> 
> On 07.09.23 11:57, Jules Maselbas wrote:
> > On Thu, Sep 07, 2023 at 11:00:05AM +0200, Ahmad Fatoum wrote:
> >> On 06.09.23 17:08, Jules Maselbas wrote:
> >>> Update lib/xz/xz_dec_bcj.c and lib/xz/xz_private.h files from xz-embedded [1],
> >>> which include spelling fixes and the new ARM64 BCJ decoder which was recently
> >>> introduced into .xz file format version 1.1.0 (2022-12-11) [2].
> >>>
> >>> [1] https://git.tukaani.org/?p=xz-embedded.git
> >>> [2] https://tukaani.org/xz/xz-file-format-1.1.0.txt
> >>>
> >>> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> >>> ---
> >>>  lib/Kconfig           |  4 ++++
> >>>  lib/decompress_unxz.c |  3 +++
> >>>  lib/xz/xz_dec_bcj.c   | 54 ++++++++++++++++++++++++++++++++++++++++---
> >>>  lib/xz/xz_private.h   |  3 +++
> >>>  4 files changed, 61 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/lib/Kconfig b/lib/Kconfig
> >>> index 758197b608..9291e5a8ff 100644
> >>> --- a/lib/Kconfig
> >>> +++ b/lib/Kconfig
> >>> @@ -42,6 +42,7 @@ config XZ_DECOMPRESS
> >>>  	select XZ_DEC_ARM
> >>>  	select XZ_DEC_ARMTHUMB
> >>>  	select XZ_DEC_SPARC
> >>> +	select XZ_DEC_ARM64
> >>
> >> Hmm, maybe for PBL, we should only support the XZ BCJ filter that is chosen
> >> for barebox proper? If you are trying to get barebox binary size down,
> >> maybe you are inclined to check? :-)
> > 
> > indeed, i thought it was already the case. How would do that ? have two version
> > of the unxz binary object ? one for pbl and the other for barebox proper ?
> > Or maybe only select the relevent decoder ?
> 
> You already have two objects (.o and .o.pbl). What you'd do is ignore the Kconfig
> option in the PBL case. Looking into the code, that's indeed happening
> CONFIG_XZ_DEC_ARM is only consulted when !defined(XZ_PREBOOT) and that symbol
> is only defined for PBL. This has one small implication for your code though:

I didn't found the .o.pbl, but this seems to be compiled in pbl/decompress.o,
which directly includes decompress_unxz.c after defining STATIC (which will makes
XZ_PREBOOT being defined).

After digging a bit, it seems that pbl already only contains the relevent decoder.

> > 
> > snip
> > 
> >>> diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
> >>> index a7e2d331ab..5c906932f8 100644
> >>> --- a/lib/decompress_unxz.c
> >>> +++ b/lib/decompress_unxz.c
> >>> @@ -132,6 +132,9 @@
> >>>  #endif
> >>>  #ifdef CONFIG_ARM
> >>>  #	define XZ_DEC_ARM
> >>> +#	ifdef CONFIG_CPU_64
> >>> +#		define XZ_DEC_ARM64
> 
> You define XZ_DEC_ARM in the aarch64 case, which wastes space unnecessarily.
Yeah, i was just a bit worried about "backward" compatibility where a newer pbl
would be used to boot an older barebox proper... compressed with the arm BCJ.
On a second thought, this doesn't makes much sens, barebox proper and pbl are
tightly integrated, so this should not be an issue.

Thanks for pointing this out!

Cheers,


