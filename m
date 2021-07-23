Delivery-date: Fri, 23 Jul 2021 12:20:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m6sIS-0002IB-6s
	for lore@lore.pengutronix.de; Fri, 23 Jul 2021 12:20:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m6sIR-0007in-Ax
	for lore@pengutronix.de; Fri, 23 Jul 2021 12:20:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T4xWFItNwEoLnXZrvTxkcybvupdUiTbHmsrGVhXjGOA=; b=yC6BZO2sEUIV1t
	Zj5mXZ01XXyRCJlQjvYL3MPuUT7qNtkoWWmnk9c1TsSt8W9bfiY3dUXwj2qpnryYwcIWbHIzrA8oL
	vNM2UleZOAFz3YJMdw8FhZpKV3Lf6ZvWzRCw13B4RBDHvRFt4MEkXBhpNbsKJfapVdTXBh2eErRKF
	xTblJ7nZ9aXpuq9I76ZHiMWElRbTsHBXag9g14ftvwQOKMVuF+LGdmbO/9UPZ+numpp67VM8d3OpF
	0fcUnr7FWrTA7gLXz6u7074nk3FMXOjotp60SirewHfHAwbBw/4hwhhSDn94YCc7QHIGEJoxLY0GK
	WbWtQxnEtIYZCEylF1EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6sGe-004Km5-Q8; Fri, 23 Jul 2021 10:18:56 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6sGZ-004Kji-5X
 for barebox@lists.infradead.org; Fri, 23 Jul 2021 10:18:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fBNoe/TnGpNogKqqwi4fUTjrFNy1yswQqLb/16ffdsw=; b=qZbw8ExERVQbiyEo7XYnkM6n0c
 imDB/IFX/nQK7AecS2rqUCp1yo61doidJi8z9DcbRf6Z89Jr5d9JI/k9Ci5jE1STEoDfZ6I/brX/I
 tia5DRjtjy4J6YNKycYMPDGTnHqUn7pkwYGjiJ6XKKknsnt7hFTNtUHR4stB5F/HnKxXJ1DkjWpZv
 /FOsri+Qa/lH0LQFZ64eQgzy22e416ilaYamNcQ+GuDJ3FMig9O2upigJj40oy4p9bewKGQLg1HOn
 DmVl2G3EWksZW7GugHTbwFV6azzXksRODcmSISrtO/I8jQBV8ApEGcCUcf8OTXA/r4ssg3MS1cXUy
 UEtzWIkQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:53724
 helo=[192.168.69.215]) by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1m6sGO-00EV7x-Vk
 for barebox@lists.infradead.org; Fri, 23 Jul 2021 12:18:41 +0200
From: Andrej Picej <andrej.picej@norik.com>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <4e1aa199-a5fa-2ad5-80cb-ef3cf86fd174@norik.com>
Date: Fri, 23 Jul 2021 12:18:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Language: en-GB
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_031851_598470_E2533D73 
X-CRM114-Status: GOOD (  13.08  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Not successful if statements returning error code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

I have a question about Hush shell and the use of its conditional 
statements.
We have come upon an interesting behaviour with its return values.

If the condition of the if statement is not true then the return value 
is 1 (error code), and if the condition is true the return value is 0 
(success).

Simple test:
> #!/bin/sh
> if [ 0 -gt 1 ]; then
>   echo "0 gt 1, Ret: $?"
> fi
> echo "Ret: $?"
> 
> if [ 2 -gt 1 ]; then
>   echo "2 gt 1, Ret: $?"
> fi
> echo "Ret: $?"

Output:
> Ret: 1
> 2 gt 1, Ret: 0
> Ret: 0

This means that if, for example the first if statement (where condition 
is not met) would be at the end of a script the return value of that 
whole script would be 1 (error code).
I don't think this follows standard shell behaviour. If if statement 
condition is not met this doesn't mean that the return value should be 
an error code, right?
Using other shells (bash for example) we can see that the returned value 
in both cases is 0, which is expected (IMO).

This behaviour is not new to the Hush or barebox as I could reproduce it 
on various previous barebox versions (2013.08.0, 2017.12.0 and 2019.11.0).

Of course, this problem can be easily avoided if at the end of every 
script we use explicit exit 0. This is doable, but a little annoying.

Although this is not a deal-breaker for us, I was wondering what is the 
reason behind this? How do you get around this and are there any plans 
to fix/modify this in the future so it follows the behaviour of other 
shells?

Thank you for your answer.

Best regards,
Andrej

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

