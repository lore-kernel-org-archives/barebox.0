Delivery-date: Tue, 02 May 2023 17:12:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptrfq-002OEq-63
	for lore@lore.pengutronix.de; Tue, 02 May 2023 17:12:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptrfo-0001Z7-1Q
	for lore@pengutronix.de; Tue, 02 May 2023 17:12:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0oT2ym7GHkpGgUeSUydiHmfUrBvAFwXPaJ6nEMvEO1c=; b=ME4GsNP3XBATtTPxZa70MtoyP4
	mZ9jqSoiaK2vnxSZXqyyW1xK6vRDvqwoScWEgqmNYqHZiD/l3dQca4N77Ed/ixmbzOt37Yr17Y6jw
	iLWai+uWW1gpx/8q5agK06zyy8TRWmz3upJHCKUxNWI0V4HoTJOch1gTRCE9EXaTK9eHimtuDIRyb
	5snu34l9mbZrisqt6EEBkdZb34p+A7I5dmbid8fBDzT0RE4YjUT4XVYn0NqxSb6S3o477pP1dasqS
	d/h8gnaCoOB04zjYeHZkfPp1wbD5rbOzZWrrlAxUMOaaS2D5vdPZ+UXcMIdrRw35LjnfWwM3mDiVY
	RxpiM21A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptree-001uat-1H;
	Tue, 02 May 2023 15:11:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptreb-001ua6-0O
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 15:10:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptreZ-0001Su-7S; Tue, 02 May 2023 17:10:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptreY-0000Pa-MS; Tue, 02 May 2023 17:10:54 +0200
Date: Tue, 2 May 2023 17:10:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230502151054.GL29365@pengutronix.de>
References: <20230502122705.2112637-1-s.hauer@pengutronix.de>
 <82fdc4f1-3ffb-9b56-fffa-d6276db06f64@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82fdc4f1-3ffb-9b56-fffa-d6276db06f64@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_081057_159224_3E62146D 
X-CRM114-Status: GOOD (  21.82  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: rkimage: Use non-deprecated functions for
 sha256/512
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 02, 2023 at 04:59:50PM +0200, Ahmad Fatoum wrote:
> On 02.05.23 14:27, Sascha Hauer wrote:
> > SHA256_Init() and SHA512_Init() are deprecated since OpensSSL 3.0. Use
> > EVP functions instead to calculate hashes.
> 
> Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> I'd have preferred we just drop the OpenSSL dependency here though (:.

I know. We depend on openssl for several other host tools anyway, like
imx-image, rsatoc and mxsimage, so I took the easy way out.

Sascha

> 
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  scripts/rkimage.c | 22 +++++++++++++---------
> >  1 file changed, 13 insertions(+), 9 deletions(-)
> > 
> > diff --git a/scripts/rkimage.c b/scripts/rkimage.c
> > index 6e68d508ac..551114ed82 100644
> > --- a/scripts/rkimage.c
> > +++ b/scripts/rkimage.c
> > @@ -9,7 +9,7 @@
> >  #include <stdint.h>
> >  #include <string.h>
> >  #include <time.h>
> > -#include <openssl/sha.h>
> > +#include <openssl/evp.h>
> >  #include <errno.h>
> >  #include <stdbool.h>
> >  
> > @@ -22,20 +22,24 @@
> >  
> >  static void sha256(const void *buf, int len, void *out)
> >  {
> > -	SHA256_CTX sha256;
> > +	EVP_MD_CTX *md_ctx;
> >  
> > -	SHA256_Init(&sha256);
> > -	SHA256_Update(&sha256, buf, len);
> > -	SHA256_Final(out, &sha256);
> > +	md_ctx = EVP_MD_CTX_new();
> > +	EVP_DigestInit(md_ctx, EVP_sha256());
> > +	EVP_DigestUpdate(md_ctx, buf, len);
> > +	EVP_DigestFinal(md_ctx, out, NULL);
> > +	EVP_MD_CTX_free(md_ctx);
> >  }
> >  
> >  static void sha512(const void *buf, int len, void *out)
> >  {
> > -	SHA512_CTX sha512;
> > +	EVP_MD_CTX *md_ctx;
> >  
> > -	SHA512_Init(&sha512);
> > -	SHA512_Update(&sha512, buf, len);
> > -	SHA512_Final(out, &sha512);
> > +	md_ctx = EVP_MD_CTX_new();
> > +	EVP_DigestInit(md_ctx, EVP_sha512());
> > +	EVP_DigestUpdate(md_ctx, buf, len);
> > +	EVP_DigestFinal(md_ctx, out, NULL);
> > +	EVP_MD_CTX_free(md_ctx);
> >  }
> >  
> >  typedef enum {
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


