Delivery-date: Sat, 01 May 2021 15:21:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcpZ1-00077h-Vs
	for lore@lore.pengutronix.de; Sat, 01 May 2021 15:21:43 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcpZ1-0005Pk-9l
	for lore@pengutronix.de; Sat, 01 May 2021 15:21:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:Mime-Version:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6NqpuAkObtfmlUwUVxYqs1MLhxYHUl5otHI6J3sIS30=; b=E2ZKJk+WnjDBlO
	NIAyBZGLK2OuoG8DQW1z1q/LlRNXxooYn1a71l4FLRxWVgo1TLMnwgeS7eXxKTRwnZSaxgdE9zzL3
	vCeO++ckgHYb/ozHNCz3t6wod7freZp/sNOAROyx0h3yN2VwgJ71CmLo2bjEqPPeWseS+uQCHsuGu
	10LzUKKZ+iMnuVyyEt/gtv337jkya3wq0ZK46ide1lLCjp5T9wog79jF4ROb4G6NGSIC0+uM+njvm
	0dCz42jrhPrMDLKd7EHJ3PknxyxsO1F1yGsyVoKA/amx7OMqicbUvfixdh97zjb4T5voh5u6I6gQ3
	jPPvqzn86KO4/3BrA33A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcpXt-00A5nQ-GJ; Sat, 01 May 2021 13:20:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcpXm-00A5n8-RB
 for barebox@desiato.infradead.org; Sat, 01 May 2021 13:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-ID:Date:
 Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:Sender:To:From:
 Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:References;
 bh=odCZ3TR/1cZZd+L8dyUH5xdnuvkR2jyKLlVfORCA3zI=; b=S7EXkRrN+YBOFUSjC+y1AHPeA5
 cxZQuJBT9DdGZuiYE/OmeNeDfoepGe8aaVY0n7NbawiEIliDc7xNirs44DGOB2Zx9a98Z38JDsItj
 HnGc8lsp4gEusU+GSAwUBKEqnbGQpEqcHkTUNX7PmqxtRREaq9LMm4zxXcGFVHKAtwmqE7SQtK+Gp
 mfIehd/Hwc6nJPm2oQwvg0gpXPjbgkB//iNwj7fyuVjhWLCzBhbqX8FGFFU75Gi7zLcw49R3HsAH9
 WiVnzYIkO13/kYvZrdNBTEJui+/3567o2Nkb6NyN81ntmQ3ft3ie22UkvNLg9XKiV6cKPrNJIQpis
 XbCiGCbw==;
Received: from smtpbg407.qq.com ([113.96.223.67] helo=qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcpXh-0020Tz-DE
 for barebox@lists.infradead.org; Sat, 01 May 2021 13:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1619875202; bh=odCZ3TR/1cZZd+L8dyUH5xdnuvkR2jyKLlVfORCA3zI=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=nd5uxLkb6ycK1HG5gL6j6qAprH/xgmQEt/0RmpHdt7bf5RPC0lSQ41MsPAY+XDD2b
 kcbRhnir44YCmivdvDWUk9AHswBL0j5AtsIv0xsJqRGksMV7PMxeQEaZGkKzLMhJGV
 UMDOE/BVgUJWIbA5NKumoOfKy8J4rbaJa/4Pqru8=
X-QQ-FEAT: Tubeh+4qKFRX4K1y1aUwI6rzP2jmL0DhzIb3BvE2DDis5Vum6Dld3boLoe2RJ
 EvqCzQ6T9bMQ8/4y9nRQ3qk6iTRZWEBZHG9XU+uPgUZzJhCTnWe2YR0VhAQXOcHmGxbgevs
 FBjDEkGDfUu4ddslrXSbwRoTIfC+edieJV9p8SPlYfnIpISBR80n+TYqiZKOVTcjeWAT8aF
 fi8m3wGQ8qY2N4XkSf2mUXwGSMRbGx2uppp0HUkaRIMZqcKFTrqyWxtDNvg3alK9Uqk/bmO
 eXsg==
X-QQ-SSF: 000000000000005000000000000000M
X-QQ-XMAILINFO: MIphKeZJr2lQRKdSu3o3qC5yYlIm0aQD3JEuRrXkXFvodm/3zULmIAW7d3NVkH
 /pQfnI21WXZtbJbIlTUg2emB0IpTgPI7FaFsZShHwyhqB8BXuECInVr97NLQCLlPGu0QPAarqG7GF
 eSlZMxo33duCzIFWHfeAuq9p2UsAJBVRf7A2UMZmdaUJVsxrzpYgvmO9fESvSvCgcypCcWAY5FQ6Y
 By04Ztp8fOtQ+vGhUWpkzUmr5aUywxj+8nDn24KK7WFDcnXx4xUIyh8/js3vtt3vX2yIwQprZzJwl
 +rw5HaZGt6a3HHeffGTEFAHkVsPndiwt9MK8a4o/rJr4xA9BaSMRYLiRU/OBDCrMQmktJE/9e+Dro
 t/heu5TRasa9gw/AByh0uSe5EtsvCOGNeiJ8XXN+OxbR5mbBEu8o+eq2VImC7x+1A+7wQcX/Py+bX
 4MzOgBh+04xW13R+rRIqqceGL+PlvGUZWAV7X/57c16eI3944OjfCcJrfEIvXdBsXQ5ofPLfJEA/u
 W/XLmjUiBtpWzWuKYBmX+mC9dtlydwXUAqM4J50LzuFKs1VVFRkq9ciK5LxltMa1fHr5ZPoha/ymj
 Xke25xXW/GHeClPfYWKYmC8Om8vXQ2mPqbgr/zyixNDgPsXop4Ng5gsK1UU5hvJOKJ9FlnjlnWzZ4
 ro9ENYZnvA1Gg48VAdlh4ZnyMIIF/oDeyJYLmhWvIiCGz+tArDEA9skqpKCKYLjKT2NhBk33fWSB9
 W7CXmWYmylRdrdQmfUW4EwDlSE/B4g1AuSxQpGV9ksSP3FL4SvRLnAnb2e+hCSW52+IE=
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 58.213.233.102
X-QQ-STYLE: 
X-QQ-mid: webmail703t1619875200t4195365
From: "=?ISO-8859-1?B?amFtZXN6eGo=?=" <jameszxj@gmail.com>
To: "=?ISO-8859-1?B?YmFyZWJveA==?=" <barebox@lists.infradead.org>
Mime-Version: 1.0
Date: Sat, 1 May 2021 21:20:00 +0800
X-Priority: 3
Message-ID: <tencent_8401BCF91206152F6C87DEF586209CF25805@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Sat, 01 May 2021 21:20:02 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign12
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210501_062022_020412_4EB0E1D3 
X-CRM114-Status: GOOD (  13.36  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=4.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_NONE
	autolearn=no autolearn_force=no version=3.4.2
Subject: Are there any operations may influence WFI instruction?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,
  I run rtems6 on my imx6ull board, just initialize a GPT timer to flash a LED.  I load rtems with barebox, after output some initialized messages, system enters shell and stalls, interrupt(GPT timer, arch7 timer for tick) do not happen again. Shell (connect to UART1,interrupt mode) still works, when I type something, the LED flashes. It seems that system only responses to UART1 interrupt, and triggers the other interrupts respones. I remove wfi instruction from idle task, system runs ok.
And when I replace barebox with uboot, everything seems OK. I think maybe some initialized differences between barebox and uboot, but I haven't find any clues that  may influence WFI.


Any suggestion?
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

