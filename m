Delivery-date: Fri, 17 Dec 2021 14:26:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myDFW-009UNO-P5
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 14:26:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myDFV-0006lH-JO
	for lore@pengutronix.de; Fri, 17 Dec 2021 14:26:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHIZ57r6cyeqAYCzaN6wnPqWDIDG0psdJLeo2GzMrdc=; b=dnjnCev7A2sxsK
	fILryF5BcVrpeEJZLMQbcXRb/OGPDgnzAiufDZBEW1khq8atAAyR/aYEDUE72ZxNDJqldVNolEQUB
	w7u2bqC62XVg20zAKnyRGPCz3oRUux85zT9b/jATwXezL+rQmvbjvTBL0YKTruFpE+pBpu4MFZXSr
	zNNRI8UK0cyoOR5gXYtQY52v7SNpn0H/5BdvkRatWW4ySuXampGZbwGy0hLwWGnZV9ausAKSVv1s+
	Ij5NjrBipKNaaVHne9iQZl7CT+lc2YvUlgFgXR0OyK5apnSCVyhnPvji+TIsrAYfKCUCNmRVU5YfL
	9xOjS7tnZzOjt3a9JxEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myDED-00ANNC-W3; Fri, 17 Dec 2021 13:24:54 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myDE7-00ANKp-5m
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 13:24:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id F262D24BD09B
 for <barebox@lists.infradead.org>; Fri, 17 Dec 2021 14:24:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1639747479;
 bh=ZZI5EwYUTwyfUzwTOQh91crZHdxiiuxf9ahB44Hcqjc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=fN6a+HyDenLKp5unax7Jzc+vu3ERUJSSBkEZgFrg2kefxZLhpUCN1d+EFGVavqIsg
 oHSEEPiFJ5GCQHTYy5pqDhmY8CvNnrWThVLiqfsk1beWQ3YBQxnPfNMK8X+NZIXVGH
 JGiZRYuAb/zn87DPIJADVCFRE5Ql+/GhdMh6Q1gM=
Received: from fx301 (localhost [127.0.0.1]) by fx301.security-mail.net
 (Postfix) with ESMTP id 9D79424BD0A8; Fri, 17 Dec 2021 14:24:38 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx301.security-mail.net (Postfix) with ESMTPS id 4C73624BD0AD; Fri, 17 Dec
 2021 14:24:38 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 3235B27E03AD; Fri, 17 Dec 2021
 14:24:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 1BAD827E03B0; Fri, 17 Dec 2021 14:24:38 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 wdVIg82Lh-oS; Fri, 17 Dec 2021 14:24:38 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 0969327E03AD; Fri, 17 Dec 2021
 14:24:38 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <248d.61bc8f96.4b816.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1BAD827E03B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1639747478;
 bh=2f917v51iB0x0GZj1VScEVaYM0/JzORFSRIakokP1l0=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=C0VcWwc+Ns5fl5qsPrhKaUhSKrgtYanYHzfk5WwHS5VKRHvFVeOCM9h3cby9431H/
 w6i+Wazad/ZI/kJyFFGW+VEAhi8ww8YvGVjBZl0w6sNnawo5hPAeeJDVBCHBTFmxna
 YbulG20xXp7/nFt6BXOVWMZYYpbrwaQLWapDT1dE=
Date: Fri, 17 Dec 2021 14:24:36 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211217132436.GH3394@tellis.lin.mbt.kalray.eu>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
 <20211213210905.3399551-6-s.hauer@pengutronix.de>
 <20211216122125.GF3394@tellis.lin.mbt.kalray.eu>
 <20211217132329.GR6003@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211217132329.GR6003@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_052447_549262_A6CADB1E 
X-CRM114-Status: GOOD (  17.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/25] console: Fix message colours
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 17, 2021 at 02:23:29PM +0100, Sascha Hauer wrote:
> Hi Jules,
> 
> On Thu, Dec 16, 2021 at 01:21:25PM +0100, Jules Maselbas wrote:
> > Hi,
> > 
> > On Mon, Dec 13, 2021 at 10:08:45PM +0100, Sascha Hauer wrote:
> > > The correct code to change colours is "\033[1;31m", not "\033[31m". Fix
> > > that.
> > 
> > Uhmm I am curious why this is the "correct" way. From what I can tell
> > the terminfo for me says that 'setaf' red is '\e[31m'.
> > Maybe the EFI consol doesn't support setaf "termcap", an only has the
> > 'sgr' capability, and the non-bold red selected as '\e[0;31m'.
> 
> Looking again at it, '\e[31m' is correct. Maybe it would have been
> better to say "Change to what efi-stdio can parse"
yeah, this is a nitpick

> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> To declare a filtering error, please use the following link : https://www.security-mail.net/reporter.php?mid=f35c.61bc8f52.89ac3.0&r=jmaselbas%40kalray.eu&s=sha%40pengutronix.de&o=Re%3A+%5BPATCH+05%2F25%5D+console%3A+Fix+message+colours&verdict=C&c=5c80bcf023a7e05c839c2ae283528cd6185478a1
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

