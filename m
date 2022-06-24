Delivery-date: Fri, 24 Jun 2022 10:47:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4ey2-00D1yV-Fu
	for lore@lore.pengutronix.de; Fri, 24 Jun 2022 10:47:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4ey2-0005s7-G2
	for lore@pengutronix.de; Fri, 24 Jun 2022 10:47:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Subject:To:From:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ExP1krnDmsDVflpbDk6ltVzUMXKJp/Z42vsVJQ9Hl04=; b=meAkoBiwZOQlmW56HdF8IpAgEg
	YFnx5k3juZ3kKaVxvWwmTLq5J+VkP/GkSMWsAOSz7ZhKziQZ4txCahIc7vx1dRuZLCB/5lHxTo0cY
	6OMJaVwiYbm6VhJeBShRXOtdljReaptD9KNPyPwotzkCVlQC4gyNSXV6b9B4AOMhNPCYLFf46442g
	N36Auo+uhUA1kTfaia+NKEPWUjNFvjDITOfpHEfC4NkIr0+1TuTXDJ+CnV264Zy0Mec+NQS7BziZO
	3tZVZB2+gx8t6d8x2JPOF50ezDuvKf/juuR5gDY3X1KekDN+wdrLtePXHvfrdBfxOwbN0NuOZDyBg
	D036mxEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4ewd-001H0Z-Gn; Fri, 24 Jun 2022 08:45:39 +0000
Received: from mail.comprest24.com ([51.195.235.37])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4ewY-001Gzn-Jc
	for barebox@lists.infradead.org; Fri, 24 Jun 2022 08:45:35 +0000
Received: by mail.comprest24.com (Postfix, from userid 1002)
	id 512ACA239C; Fri, 24 Jun 2022 08:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=comprest24.com;
	s=mail; t=1656060333;
	bh=ExP1krnDmsDVflpbDk6ltVzUMXKJp/Z42vsVJQ9Hl04=;
	h=Date:From:To:Subject:From;
	b=wvngHuTFyVM3dsu30I2PZV7l9o+6lAqsYlaFjuJQIlkprY1MTMBF1zzviXQHe6Csp
	 4UIQ7AnP/Mvl9FrmDjAP6GGTgye8o7YzVntPQqR1e7dpE3o2Eo2q64P6g/aUDF5utS
	 ZAM5nMOOndAQ0lzLDMRtgUpYRwMvKUmnqu66jKVgUj94uIAILGi8nVuFWIF8I6ffUp
	 cdaIauFh0h8rpBi5d7BnIw0RaOxtZ6fF7z+MSBrKDyBWBkm26hAMuslWQE+lm4rd2k
	 m5XeyCYDX+EVY6ZEtpaghYPnIS0Yg4H8Smebrrdr6OfcewYMhCnw8vy5kswF16ezny
	 JnUbRHe7SZvQQ==
Received: by mail.comprest24.com for <barebox@lists.infradead.org>; Fri, 24 Jun 2022 08:45:02 GMT
Message-ID: <20220624081957-0.1.38.b3yj.0.faqy77959a@comprest24.com>
Date: Fri, 24 Jun 2022 08:45:02 GMT
From: "Luca Gauthier" <luca.gauthier@comprest24.com>
To: <barebox@lists.infradead.org>
X-Mailer: mail.comprest24.com
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_014534_816895_6F728DA5 
X-CRM114-Status: UNSURE (   1.52  )
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
X-Spam-Status: No, score=-1.4 required=4.0 tests=AWL,BAYES_20,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: New collaboration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I would like to discuss your needs in the scope of acquiring new Clients.

We operate in the Internet marketing sector, have the largest Technical D=
epartment in Europe and have implemented more than 200 campaigns in the U=
SA and Asia.

We are broadening the group of our Business Partners (currently more than=
 237 companies) and therefore we would like to offer you cooperation whic=
h we base on mutual support in activities aimed at acquiring new clients =
and strengthening the company=E2=80=99s image.
Our Business Partners receive commission on the value of an agreement sig=
ned and the group of new clients.

If I could present the details =E2=80=93 let me know when I can contact y=
ou


Best regards=20
Luca Gauthier


