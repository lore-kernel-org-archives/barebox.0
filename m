Delivery-date: Mon, 17 Oct 2022 14:15:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okP2A-00Bcjn-KO
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 14:15:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okP27-00043q-PO
	for lore@pengutronix.de; Mon, 17 Oct 2022 14:15:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k6tSYAWelbJLqMBcdYM3ADqhSbCa40MTiTkAzofKXkQ=; b=1/QGgkul93MAd4p5ZAsCUhC9Uc
	+iZM6JdV44Y/tNQpvr22t+CdiK96eRaK/iMJDqQBLdC2bxcYpzQi+5T43u4LX5Qe8pmBv3+DJVdc3
	h/GxIgtw3cOmdIoliLLTSDNG+iRClWKEUoqc7lG8Hd9ibXS7P80nYkWbmveETvB6ZUaFXriCQjF+b
	xyZgnQh035hbdxP8eAd7BUF4rZ1ojU3aGFGtjt20gBdiKB8mHSACbrgvK4jRSxCkYXkpyIjcpFS6B
	9sPK4EfVDsGbMurG+GtsRTdM5rGdL54Mcme07+atCQPgIToyQ33xaQEQUcp8SpMa0a0Q9lkjS/jSm
	F5qkGwcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okP0E-00BQuk-Go; Mon, 17 Oct 2022 12:13:55 +0000
Received: from smtp123.iad3b.emailsrvr.com ([146.20.161.123])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okOqJ-00BLWu-9J
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 12:03:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1666008214;
	bh=biLCgaP++YCMNblwnnXOt68FjQm/4DUiRhvupaF9Z3Q=;
	h=Date:To:From:Subject:From;
	b=T/KM3DcvbKA56bZKYgoEDWckLtzAuo/xcRQBKo9oOZWpvbmCTkHTv/3Dpbgkp9kOX
	 jJHIsYhsxEPlYdJEC87xDYYpyhrYVJXoC8O7BzAUo2ZqefXGCTmKAcKlwhNuk9C5n+
	 FwPez7bcwClfDq1fMley1a9z7XPxjbbI/rgJ+WcQ=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp8.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id C7CE34009A;
	Mon, 17 Oct 2022 08:03:33 -0400 (EDT)
Message-ID: <98fb1314-e0c9-c75c-c89f-7bcc36a2b9c0@mev.co.uk>
Date: Mon, 17 Oct 2022 13:03:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
To: Barebox List <barebox@lists.infradead.org>
Content-Language: en-GB
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Classification-ID: 1c832a18-7d1a-4b7e-8598-eb1c457af3d2-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_050339_522928_B83BAC0C 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [v2022.10.0] initcall of of_probe_memory failed (EBUSY)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Barebox v2022.10.0 seems to work for me, but I now get this (harmless?) 
error during initialization:

initcall of_probe_memory+0x1/0x34 failed: Device or resource busy

(This is on a 32-bit ARM SoCFPGA/CycloneV based system.)

git bisect is blaming commit d0b5f6bde15b ("of: reserved-mem: reserve 
regions prior to mmu_initcall()").

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-


