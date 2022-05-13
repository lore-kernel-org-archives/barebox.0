Delivery-date: Fri, 13 May 2022 12:32:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npSaa-00BsaY-BX
	for lore@lore.pengutronix.de; Fri, 13 May 2022 12:32:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npSaZ-0006n4-3y
	for lore@pengutronix.de; Fri, 13 May 2022 12:32:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgnS5MDeEUP/w5iWhoo4kd03mcCSsVIHZL7cD3iXEvU=; b=cz8S/QnuUIymFR
	IkYRTmB/F8CMq2h6tLSpKqKiben9AF4SROXqRS18V4vf3ye1vWc+Kirfg384rK+75xvff4b1NSbQQ
	Ebmx8SW5U8q8XseUpBfCXYIoL+OSHVHEXMim6ttZ+oibYU8rOOi5pzHw+YoBZQAlTNQZIY+QRxDi3
	a3EkULCIFVQoQdsOa2igqK/m65nsMcq5u4EQI/19E00Z2mSPSgyUF+i1IWBkVSWr2E3EyANVJyQIR
	lORKi3Oh7Eqq2laB2ejzf4AaDJf6Znb/j6F3zXu4lX9my+uvDNWrenDzRqG0jSd6uYR2rVAWpOPqD
	kxQjCYXhSDPuWl18caEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npSZ1-00FZHz-Sl; Fri, 13 May 2022 10:30:28 +0000
Received: from mailrelay4-1.pub.mailoutpod1-cph3.one.com ([46.30.210.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npSYu-00FZBI-CJ
 for barebox@lists.infradead.org; Fri, 13 May 2022 10:30:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=l7QYbdhxfbRi8y6aX1gMeSreyf2w77xEoLdwjo8j1jY=;
 b=NW3js+xqjdjXB2X62NwEcASFoPPKj59KWFcNOrc7hirDgPV/RtyaLE5RmxL93a5VWlVbnf5tsLQIU
 b1XSda5duywzR452rbhEXNTCPNjyjOawDf3swdZhcuI7EXqgvpxMYmaDasfYN+h+Ii3tbFBfqC67na
 VgbQG1Uh8w3Rdn8S3LisX2N6X6JPO4LAnWzpOdXLyhJ6xtECR1JQL6lkfTEKpk6YFn/QPhlZWZIr5B
 kpYaBZqFmHXHnH9CEJozNA1OzDULD0sNMYxF4CIkj2piFRfePGyE42idVC1V5+GxOxqOhKrYPJegOs
 STMv/1dMJ6ShER8gOiSMZNv7NCo6OzA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=l7QYbdhxfbRi8y6aX1gMeSreyf2w77xEoLdwjo8j1jY=;
 b=j5JI3+7WChbZEnbpc9uw4zd+UxhtjRcBMz3frHnmRtDz+Tf9If8LQ/LHE59g8QQYxU0qc50oO4yxv
 V+dn/QYAQ==
X-HalOne-Cookie: ec0b31493cca90712d1645319a6bfe53ba3265a6
X-HalOne-ID: aab3e0b6-d2a7-11ec-822c-d0431ea8bb10
Received: from mailproxy2.cst.dirpod3-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay4.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id aab3e0b6-d2a7-11ec-822c-d0431ea8bb10;
 Fri, 13 May 2022 10:30:10 +0000 (UTC)
Date: Fri, 13 May 2022 12:30:09 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Matthias Fend <matthias.fend@emfend.at>
Cc: barebox@lists.infradead.org
Message-ID: <Yn4zMYZte5E6XBXl@ravnborg.org>
References: <1607cab4-d2d3-b5be-99f1-f9f7347d1888@emfend.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1607cab4-d2d3-b5be-99f1-f9f7347d1888@emfend.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_033022_007511_D4CBAC16 
X-CRM114-Status: GOOD (  11.92  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLACK autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: One barebox image for multiple boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Matthias

On Fri, May 13, 2022 at 10:55:02AM +0200, Matthias Fend wrote:
> Hi,
> 
> I'm looking for a solution to support multiple boards with just one barebox
> image. The few core components that are relevant for barebox are the same on
> all boards, so that the same barebox image runs on all boards. It is
> possible to dynamically detect the board type inside barebox, but as this
> requires some infrastructure it is not possible during lowlevel init.

The skov-imx6 boards was in a similar situation - here the solution was
to add enough infrastructure to lowlevel to be able to determine the
board variant.

Not what you asked for but maybe duplicating the minimal set of
infrastructure allows you to determine the board type anyway in lowlevel?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

