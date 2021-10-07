Delivery-date: Thu, 07 Oct 2021 11:26:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYPfc-0004lH-0r
	for lore@lore.pengutronix.de; Thu, 07 Oct 2021 11:26:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYPfb-0005hi-04
	for lore@pengutronix.de; Thu, 07 Oct 2021 11:26:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aMxevidOW20v0oXH4JuoCq12T1nUtumIFYf/Q06E3+g=; b=UntCFhZhdd8dq/ToRffhdmjfe6
	vl1/VRwCZJ75Z4OIBbmhLeyO/mnMX8OguhQisuTebXCExiUEVX2pTrhNTWZICOqHeMg8tP1eM9atY
	uxqH0IFOTBdIR7E1964Y+BuOLRTT7HteL9GUCXXk7vY6AFtO2cgp9PstwtL3EmDw3umjicr0yTSA5
	1pp276ieqWaXymxtENtY8xZuCoJJJ/f/++O2vdyuRVNXxfRFGBNsfuImDeA7W91J08vabjU9IYkfd
	/Wp5TQK+4Kh01AAJWgw/Q1qhKyBoeET9KgAETVJ54VGsubh0fxEptPwTC5uL38/JW0h8aESG2avxJ
	QAM/98QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYPdt-00GgCe-In; Thu, 07 Oct 2021 09:24:45 +0000
Received: from smtp98.iad3a.emailsrvr.com ([173.203.187.98])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYPdp-00GgBz-Aw
 for barebox@lists.infradead.org; Thu, 07 Oct 2021 09:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1633598676;
 bh=wJa5vjPme6CeNwgIdeIlmkF1sj+amPwci0aGyDPvHAs=;
 h=Subject:To:From:Date:From;
 b=XdYZGcxgM+fMcCIWcsOuSezQxgRCfy5AMkx8ijUES87XyAumUA4JRnEotQZRHyqqN
 2N63KBdrEG29Ameg56uPoYXBDTDqarMmjiibujjCPaBvjEyvLHJZGlgM9TVEqSAsK/
 20fwBGcvmXICOenMJLlqSnZq9LPe6Vv5a+jeKPRQ=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp29.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 5FFAF239B4; 
 Thu,  7 Oct 2021 05:24:36 -0400 (EDT)
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20211006135844.7361b72436286f5accbde0ad@gmail.com>
 <7fd50051-7370-5e29-c68a-8ac2439d5f9e@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <e7df2731-6d54-c0e0-b644-15849b8ac5d4@mev.co.uk>
Date: Thu, 7 Oct 2021 10:24:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <7fd50051-7370-5e29-c68a-8ac2439d5f9e@pengutronix.de>
Content-Language: en-GB
X-Classification-ID: 0fb3472e-4fe9-4d1e-92a2-1296a173799b-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_022441_532446_C9B05C22 
X-CRM114-Status: UNSURE (   9.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: inkscape 1.1.1 issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 06/10/2021 12:19, Ahmad Fatoum wrote:
> Hello Antony,
> 
> On 06.10.21 12:58, Antony Pavlov wrote:
>> Hi!
>>
>> I have just update inkscape from Debian repo.
>> It looks like inkscape-1.1.1 has new unexpected behaviour.
> 
> I ran into issues as well when going from 0.92.4 to 1.0.1.
> Instead of adding another quirk, maybe we should use something
> else for SVG to PNG that is actually stable.
> 
> Any suggestions?

Perhaps rsvg-convert?

In Debian and Ubuntu, it is part of the librsvg2-bin package.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

