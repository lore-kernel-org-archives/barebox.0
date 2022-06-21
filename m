Delivery-date: Tue, 21 Jun 2022 11:24:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3a7p-00970j-37
	for lore@lore.pengutronix.de; Tue, 21 Jun 2022 11:24:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3a7o-00089H-S7
	for lore@pengutronix.de; Tue, 21 Jun 2022 11:24:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:
	Content-Type:Content-Transfer-Encoding:From:MIME-Version:To:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pzaGT1ORzxNjsyaG3Z4A4ZNIrE5cKDsr6SE0rGIULi0=; b=KMNe9+GrdKSTkGi4dJWvTFu3xF
	6d8w2kNgcBUJeghevJzmINiwPYEnV0l+LvPXaS7EvG2BbK4wnbpp84Hf16qlcJRvT8U4fhInvz3qE
	1UDXuddEyfg0Kz0Em/H0eJAMCF0AhJDpEU8iXOC/WiR9SR2Ec6DUhxlWVnOljglhm/e4eyGrFRElL
	NtC1axkFp0mpUQylzCyE4BXIP4Yj4v9Z35pC6y/WXlUN0pm3VsZBZ199JMfeOSZsXpnhomjCIFgdq
	67Ra2FEGJdjYGiw61vfNhLH20ZXU5tZe4Zm++dOc6BNXmulVqu47hgAoSGIM4gPXxpVC/Y6NpGt88
	xFDqC5dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3a6B-004bWX-J1; Tue, 21 Jun 2022 09:23:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3a67-004bVu-Iu
	for barebox@bombadil.infradead.org; Tue, 21 Jun 2022 09:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Subject:Message-ID:Content-Type:
	Content-Transfer-Encoding:From:MIME-Version:To:Date:Sender:Reply-To:Cc:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=pzaGT1ORzxNjsyaG3Z4A4ZNIrE5cKDsr6SE0rGIULi0=; b=TbeXGQeFy9kQFQUVMedXlSZ4/4
	PSHBsGejjQfEwVQ8Mb5rmnRrq+z//mQi6Q5oc67SxxJKNYlBAlPlSPidNoy16rIoJnmNmN2GiItO3
	rhwaCvwN1/Ivp+mFjPPOt00LdNwyB8ZLA7qZTgNFxx0Tx4iqS6ZJmiUYQY3rx/1Fogi3+7+pOYtLh
	o7fRt591IOZ4EwaJbA5mCEcsEH1XmWIZGl0Y7Nv4Czbw2Zfh3jLvzlnFMED+WX0ULHZ5+JdLSzUu6
	cQZ9ETlWLT802V7wSQbJDBC+c07fmvGdy4ZTQs0zU1+CpBWr1KvAQA7DYfBJu7KJGuCw4o8PM7PxZ
	J5p73rAQ==;
Received: from inkawebdesign.peruvirtual.com ([209.58.149.225])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3a63-005xxR-HY
	for barebox@lists.infradead.org; Tue, 21 Jun 2022 09:22:57 +0000
Received: from [190.83.75.232] (port=44237 helo=[127.0.0.1])
	by inkawebdesign.peruvirtual.com with esmtpsa  (TLS1) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
	(Exim 4.95)
	(envelope-from <ventas@construtodo.com.pe>)
	id 1o3Zqb-00007k-6F
	for barebox@lists.infradead.org;
	Tue, 21 Jun 2022 05:06:58 -0400
Date: Tue, 21 Jun 2022 11:06:58 +0200
To: barebox@lists.infradead.org
MIME-Version: 1.0
From: ventas@construtodo.com.pe
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8
Message-ID: <0o35s380-5y01-2j42-uh83-638e3mx6451u@construtodo.com.pe>
Require-Recipient-Valid-Since: barebox@lists.infradead.org; Tue, 21 Jun 2022
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - inkawebdesign.peruvirtual.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - construtodo.com.pe
X-Get-Message-Sender-Via: inkawebdesign.peruvirtual.com: authenticated_id: ventas@construtodo.com.pe
X-Authenticated-Sender: inkawebdesign.peruvirtual.com: ventas@construtodo.com.pe
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_102255_746281_9D4893EF 
X-CRM114-Status: UNSURE (  -0.94  )
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
X-Spam-Status: No, score=-1.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_BL_SPAMCOP_NET,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: No subject
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

I'm going to make you an offer you can't refuse. If reputation means anything to you.
I am a programmer who likes to dig into other people's dirty laundry and I hack into cell phones, laptops, computers, tablets of users like you in order to extract from them "interesting" photos, videos, recordings of conversations or correspondence.

I infected your device with a virus and have been watching you for over 2 months now. 
During these months, I have accumulated a lot of interesting information about you.
Not only do I have access to your phone book, correspondence, audio, but I also have information about the sites you visit. Can you guess what I'm talking about?

I collect a selection of photos and videos, audio recordings, correspondence from the devices of users like you with the help of viruses and copy them to my own server.
 
I've got some bad news for you. I can leak all of this online for general access, send it to your friends, relatives, acquaintances, send it to social networks and messengers. 
Trust me. This is something that can destroy your reputation once and for all!
The effect will be fantastic! They will see what you do in all its glory. It only takes one click for me to leak the information.
You have the power to stop it. 
What do you have to do to stop it? I'll tell you about that next.

You need to make a $1300 (US dollars) transfer to my bitcoin wallet. If you do not know how such transfers are made, just type in Google query: "Buy Bitcoin".
My bitcoin wallet (BTC Wallet): bc1q9zquts6kn9zm 9mxr4n06hwjqfxns05sex8nehj (without space in wallet)
Nothing complicated, right? 
After receiving the specified amount, I will immediately delete all the information and leave you alone forever!
But you need to hurry up. I don't like to wait long!
I'll give you 48 hours.
Don't think you can ignore me. After you read this message, I automatically get a notification about it. 
>From then on, you have two days to pay!
Yes. You don't need to try to apply for help to resolve this situation. Bitcoin wallet is untraceable, and the sender address is automatically created.
But if I happen to know that you share this email with someone else (and I will), I'll do a newsletter right away!
I hope you make the right choice!



