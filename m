Delivery-date: Fri, 13 May 2022 14:09:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npU7I-00BwhR-Dw
	for lore@lore.pengutronix.de; Fri, 13 May 2022 14:09:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npU7H-0002lz-7O
	for lore@pengutronix.de; Fri, 13 May 2022 14:09:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QkBcmHDHU5s4Dn9Hawh77mG87qUNH36RLVLWwt4nzE=; b=tbwTYXRvFze9G3
	k5B8lnnnBJRBg+rCW/P2LoSP2xFJW0qHLKGbCy0/HjwJhpLiFFpIhvGW2CwjijzA9mQVcLKhw2y4a
	/9npH6QhRthNZrr+25J48PphC4sNfZlD9KvZWGy9NhvnR+Ay1pdpWUNrQxyxurHKnX7kLWrd5Qm8T
	zEVwXm8fQQ5C+aLGn4FvOQSc+lFSyHJ695dzDa0FpZVZdTJy8xi/bB9SlhyjtuJ2Hmxl+uj4mMED/
	JZj5P5Mq5RqtKCqM4T8Mrvh8lemLQlSvq2G8ymJOpy4/VrUbOBQaTP2BMXD03LFRELdWJI8Kt+hac
	nPtGCHcLloCVLeN5Fl7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npU5h-00Fw5l-1M; Fri, 13 May 2022 12:08:17 +0000
Received: from lx20.hoststar.hosting ([168.119.41.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npU5b-00Fw2y-He
 for barebox@lists.infradead.org; Fri, 13 May 2022 12:08:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=emfend.at; 
 s=mail;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References
 :Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3ZCCJtEEcbAs/bxzt1bOwPGpnbhEUuKFDQiEcY2DcUk=; b=Mr5X+EXXPtHgLJqH8AOjHYmNuI
 dZ+ePtGPlm/HpwMW4hQPrJCIaj7GEIlg1/g55iedtYnxKPWxBQwgPqysL9itfYd5t6bIbJdyjk6VA
 Ctbcif1OfmNcM3obXUuTpdFGzoCNZD7ZbhIp2zLctNwtJ7g4gsY3cs4cuylq3GqSI2RY=;
Received: from 194-208-208-245.tele.net ([194.208.208.245]:58911
 helo=[192.168.100.101])
 by lx20.hoststar.hosting with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 (Exim 4.93)
 (envelope-from <matthias.fend@emfend.at>)
 id 1npU5X-009FtV-U8; Fri, 13 May 2022 14:08:08 +0200
Message-ID: <2d23b3c4-8374-6e17-05ab-ed3829d985a0@emfend.at>
Date: Fri, 13 May 2022 14:08:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: de-DE
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
References: <1607cab4-d2d3-b5be-99f1-f9f7347d1888@emfend.at>
 <Yn4zMYZte5E6XBXl@ravnborg.org>
From: Matthias Fend <matthias.fend@emfend.at>
In-Reply-To: <Yn4zMYZte5E6XBXl@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_050811_949195_0B188331 
X-CRM114-Status: GOOD (  11.06  )
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
X-Spam-Status: No, score=-7.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: One barebox image for multiple boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sam,

Am 13.05.2022 um 12:30 schrieb Sam Ravnborg:
> Hi Matthias
> 
> On Fri, May 13, 2022 at 10:55:02AM +0200, Matthias Fend wrote:
>> Hi,
>>
>> I'm looking for a solution to support multiple boards with just one barebox
>> image. The few core components that are relevant for barebox are the same on
>> all boards, so that the same barebox image runs on all boards. It is
>> possible to dynamically detect the board type inside barebox, but as this
>> requires some infrastructure it is not possible during lowlevel init.
> 
> The skov-imx6 boards was in a similar situation - here the solution was
> to add enough infrastructure to lowlevel to be able to determine the
> board variant.
> 
> Not what you asked for but maybe duplicating the minimal set of
> infrastructure allows you to determine the board type anyway in lowlevel?

Thank you for pointing out this interesting example.
Since in this case things like I2C devices are needed for board 
detection, I think putting them in lowlevel init is not a good idea.

Thanks
  ~Matthias

> 
> 	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

