Delivery-date: Tue, 10 Jan 2023 16:12:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGIb-007rTb-GK
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:12:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGIZ-0003ce-I0
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:12:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TgoBLMffTa/rTw/m3aMyBoewlB3sPOaBvEoF4C8Kzp8=; b=0WVzsCDHPmdkw7JMmVRwwsBCHs
	UfqJaJnsfN4JNFl86w4Ren8gyl2j4ZXK1gsRdRCiAW/4DkgTcYDPylK0Ny58VWsB19X/rQoRy/ea0
	J94YnmJCvGsWYmMihHZpL2HF10THLMb1Pq5v0q0A3tzamviqQ6QITqVbpcL5BGIXHTUQzgp8YLFEe
	pxDf+r+2fOdW+Lk23vOOQREEtrY8C5i9A8aSRKW+O3tJ0BxCDO12vbQu6ojlyYQ7n2qvlW8ysLpK0
	mMWeI7+0rS9TuJifMjmnMgAt7uu3bwfGp1KUdcf5rOXaSmCMueYDFHlT/tIKpepjHZCXOJkLK1Fas
	Vo5ENCRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGHJ-007Vl2-LL; Tue, 10 Jan 2023 15:11:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGHE-007VjJ-86
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:11:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGHC-0003Ds-QS; Tue, 10 Jan 2023 16:10:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGHC-00070b-L3; Tue, 10 Jan 2023 16:10:58 +0100
Date: Tue, 10 Jan 2023 16:10:58 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110151058.GA24755@pengutronix.de>
References: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_071100_336003_7CAF4E75 
X-CRM114-Status: GOOD (  20.73  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] lib: add jsmn JSON parser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 09:49:26AM +0100, Ahmad Fatoum wrote:
> Board code I have needs to read out factory data encoded into JSON blob
> on EEPROM. Import JSMN, a minimal JSON parser written in C.
> 
> I don't know if the board code will be upstreamed in future, but for
> now, add a selftest that exercises the API. As JSON could be useful
> elsewhere as well, I think it's good to have it in-tree.
> 
> Ahmad Fatoum (4):
>   lib: add jsmn JSON parser support
>   lib: extend jsmn with simple JSONPath lookup helpers
>   vsprintf: implement %pJP for printing JSONPaths
>   test: self: add json parser test

Applied, thanks

Sascha

> 
>  include/bselftest.h |   3 +-
>  include/jsmn.h      | 148 ++++++++++++++
>  lib/Kconfig         |   5 +
>  lib/Makefile        |   1 +
>  lib/jsmn.c          | 457 ++++++++++++++++++++++++++++++++++++++++++++
>  lib/vsprintf.c      |  44 +++++
>  test/self/Kconfig   |   5 +
>  test/self/Makefile  |   1 +
>  test/self/json.c    | 146 ++++++++++++++
>  test/self/printf.c  |  17 ++
>  10 files changed, 826 insertions(+), 1 deletion(-)
>  create mode 100644 include/jsmn.h
>  create mode 100644 lib/jsmn.c
>  create mode 100644 test/self/json.c
> 
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


