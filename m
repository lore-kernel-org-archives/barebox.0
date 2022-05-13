Delivery-date: Fri, 13 May 2022 10:56:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npR6X-00BnXl-Am
	for lore@lore.pengutronix.de; Fri, 13 May 2022 10:56:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npR6W-0002HY-AP
	for lore@pengutronix.de; Fri, 13 May 2022 10:56:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:To:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7H73trI34LWoWQ74NJuTLIjoNOnXB+gy23SHgyYOpDw=; b=Dg6ulXa3DDQNcr
	hZKJmuByj+yCMxCHp3Nmx7LZWSop07VIOy+YnWKNaEZdmEYFWAZTIKPIMovGsqyYUQKdYF3A8JBIr
	20KfUzPp9qxC7SPBmt81iY3R4dLKD+AlN6a+qdM4oPZ9McpC82oyWsqUmu6xhYNF/1npXuD9l3lFD
	aaPBufRmd7h8QFwdJCMGHbGSx+BYFzSGOsMwCf0M1H3zJOAYj+H4eBfHjx0BWcuAnavKu5boQZ8Yf
	oN37fdj3m8YHXOjiNWTP1VtUIM0pkah3ppGqi8O7wb7PHQKfzejVF1pQ972ynZ0Q7rYt0YJ1jkeQN
	0h26Kvm7Qcs0xgKomUAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npR4u-00FD8v-H2; Fri, 13 May 2022 08:55:16 +0000
Received: from lx20.hoststar.hosting ([168.119.41.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npR4p-00FD6R-Ic
 for barebox@lists.infradead.org; Fri, 13 May 2022 08:55:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=emfend.at; 
 s=mail;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:To:
 MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EuBTJQ2nFrRX/WUSwaHG6bKBmarpvSxb1UDS5BlvPhw=; b=Fe0+Y0XyUY/wh5Fqz90oFLv1Rk
 ginBI2rjjCs3qR7XNWUZ+z8kpmIL894Kluk80NwarZdowQnXMN+sGFu/JdVSqQccCqkW70xG4Xx75
 j7+YW7SdOwSmnPZt60nl7NnDIRASuwnc8YoG8iPucPAZGTOqi063xAljMIzoesTlk1fQ=;
Received: from 194-208-208-245.tele.net ([194.208.208.245]:53902
 helo=[192.168.100.101])
 by lx20.hoststar.hosting with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 (Exim 4.93)
 (envelope-from <matthias.fend@emfend.at>) id 1npR4h-007Yex-Kp
 for barebox@lists.infradead.org; Fri, 13 May 2022 10:55:03 +0200
Message-ID: <1607cab4-d2d3-b5be-99f1-f9f7347d1888@emfend.at>
Date: Fri, 13 May 2022 10:55:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: de-DE
To: barebox@lists.infradead.org
From: Matthias Fend <matthias.fend@emfend.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_015511_967006_8C9458FD 
X-CRM114-Status: UNSURE (   7.03  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: One barebox image for multiple boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I'm looking for a solution to support multiple boards with just one 
barebox image. The few core components that are relevant for barebox are 
the same on all boards, so that the same barebox image runs on all 
boards. It is possible to dynamically detect the board type inside 
barebox, but as this requires some infrastructure it is not possible 
during lowlevel init. So basically Barebox should boot with a minimal 
core device tree, detect the board type and then use the corresponding 
device tree of the detected board. Something similar to 
arch/arm/boards/stm32mp15xx-dkx/lowlevel.c but not at low level.
Maybe I missed something, but I couldn't find such a scenario in the 
existing board code yet.

Is there a suggestion on how to best implement such a system, or is 
there perhaps a board that uses something like this?

Thanks
  ~Matthias

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

