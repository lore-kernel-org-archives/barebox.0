Delivery-date: Tue, 06 Jun 2023 11:46:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TGy-00Ct6g-Gy
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:46:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TGv-0001kE-SJ
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:46:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bn0EmRyXwQn0BL/GIv1bG0KXsaymcLNVvBcrrBzBkuQ=; b=yzJz55hizFpoC1kdPj17FpgnH9
	n7RJnJs6O2a/nRXOEoFlbTzfJNr8HQss7Fd5rKGqU35Z35sA8Dvx5n+qEv+Zv++iy10UJgi3d8wzN
	g7szZ26wunFv9PJEGoEhPHSPJU4gzOCNLfa5cR7p9JWqOj5k8vB5p2yu1ix3ypELKODgKMOSAEO95
	rCgo83jBltLlG1HBfqYUxiym5U58drteaKsT07QavspirWFAK6RK/EDsql1+b9qP2GmHjtk9UCEe4
	Ca9wDuaz2X+HAjlTzMEv7RsitC/uvJ9OzultoWj4xRPOaSqsyHqS6VPrnE9iqxPzowDhlxVLEgoNk
	dnj0Gdjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TFj-001468-0a;
	Tue, 06 Jun 2023 09:45:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TFf-00144y-1X
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:45:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TFe-00019G-1m; Tue, 06 Jun 2023 11:45:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TFd-0004Ca-Dt; Tue, 06 Jun 2023 11:45:17 +0200
Date: Tue, 6 Jun 2023 11:45:17 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Lior Weintraub <liorw@pliops.com>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20230606094517.GZ18491@pengutronix.de>
References: <20230531175157.1442379-1-a.fatoum@pengutronix.de>
 <PR3P195MB05557909F99422D8CAC469B7C3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <6fb006e2-eeb1-ce47-dc81-cf97a3879a84@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6fb006e2-eeb1-ce47-dc81-cf97a3879a84@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_024519_517811_C5AF9883 
X-CRM114-Status: GOOD (  16.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFT] ARM64: cpu: support 64-bit stack top in
 ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 01, 2023 at 10:53:33AM +0200, Ahmad Fatoum wrote:
> On 01.06.23 10:33, Lior Weintraub wrote:
> > Hi Ahmad,
> > Thanks for the patch.
> > I have checked it and can verify it is working correctly.
> 
> Great! I am replying with:
> 
> Tested-by: Lior Weintraub <liorw@pliops.com>
> 
> So the scripts pulling patches from the mailing list will automatically
> collect the tag and fold it into the commit message.

That doesn't work, presumably for good reasons:

NOTE: some trailers ignored due to from/email mismatches:
    ! Trailer: Tested-by: Lior Weintraub <liorw@pliops.com>
     Msg From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Added the Tested-by manually.

Sascha 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


