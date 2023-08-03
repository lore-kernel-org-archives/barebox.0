Delivery-date: Thu, 03 Aug 2023 10:06:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRTLW-004liT-D5
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 10:06:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRTLU-0000EH-LF
	for lore@pengutronix.de; Thu, 03 Aug 2023 10:06:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yNDw7dxYb1iFKchTfXXzXMbFkT93u3iFFRq6DzULbDc=; b=m/P1rtRKkJPX5X401wY9WI+9Mx
	i2AHypERK826K1OkiKC4V9djS8+17WyJTByGIUa6mPrnATa3g0CnmFw/WLvcQhxPTpZELHRPzCI6T
	aBf4lGURmflL91TnT1c2+D9rAZx6U6Be7NGPaalOwRG5LiS4i5CUHAeDyud/BbLF4JDLEAqRCGwFd
	nECEO2NcyT/S1veuAzvY8Av6q5HG79FyDfZXKlvpZ9hyb0LD6NtCie+55ITvF7yM9EQl6JbEAw5m4
	wE/sD7kOLOgJ+WgQ0Qmvj1B8DuKnaF0bDbyujABfA9jTFOz3GFQXKRLLMPzO5c9XVihEt1jZvJxtF
	+d4NBpLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRTKE-006xgn-2F;
	Thu, 03 Aug 2023 08:04:50 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRTKC-006xgH-0r
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 08:04:49 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-68730bafa6bso1228317b3a.1
        for <barebox@lists.infradead.org>; Thu, 03 Aug 2023 01:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691049887; x=1691654687;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yNDw7dxYb1iFKchTfXXzXMbFkT93u3iFFRq6DzULbDc=;
        b=lOENclaSDRmVp47QxibHL9428lCOgv9LsE5yihfDa+SClj6Q8DrHgVChw8ec6j5rHt
         MUT17rWtfl0ITUPcrPmBiqZWmktRbRzopwiwNOfrOlmibqVys12f/GussMiiAYhBI+ln
         Xj/6EmItmEM5VrKNQmV2huORroqosL8Uf+WVgKxsWfGq3BrURdrWxue8pcor8fPPH5jz
         D/+wlAmzNuCnP4Y+WOGP86ZI27r/ONvFBouG3VeUrHfJdEExJTMtmW9714n6Vice1R/D
         3eSVof2M1Ng/SnKWGXpdsI7meu7iUw9eFpMRrXOhTVAWIkQRtDj11UDFz0foaPTw8z/V
         bGiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691049887; x=1691654687;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yNDw7dxYb1iFKchTfXXzXMbFkT93u3iFFRq6DzULbDc=;
        b=V6bQwT9G3rxr6KUQtv5w6kyCsDS3hjs41lDaGOsjrkmqQsV47BMkR2aKd9gH/daeaK
         Iq2wZQ85L9nVva/fpTXlr/J5le4x8Gf2ox7ZTBXNMCqKk2i5B8YZDWeMlF/rFrjOuio9
         wPF0Ac1P75D+kkUnybNiagUzTsQgfVbygbF5FKS9rmG9CL/A2CRutv7BWzthBYt66/9t
         KIyx8PPVxlFyWYGQf/ddsrxqI/LJxdICm9fvMTIp+6VBL7Ka5kZOaO8tAJ0wg9rkfND3
         /uguZUIfQKMg8oyPf0o5YDWmbpFuIKmeJXR0HFhrcX+7q1FrtJQ0xJA5gP+Bf8qUt6yG
         HLfw==
X-Gm-Message-State: ABy/qLa59jALA9ZMpeUHyM8GMtNzhlAP3UxymatY6J/KO/pLh2n2cDtH
	G72rgUUREWBdmAo28IjzlZm5f7ZtB52fkzyD8trwOwiWL1PjzQ==
X-Google-Smtp-Source: APBJJlFQ5i6mzU5TyuCuYsdiq/dAInSKMvDm7KdwaBcd6HYygwg4plXikHroTow7jpAlOzNq9bPLp1ePV4875GS/a04=
X-Received: by 2002:a17:90b:46c2:b0:25c:18ad:6b82 with SMTP id
 jx2-20020a17090b46c200b0025c18ad6b82mr22066767pjb.21.1691049887190; Thu, 03
 Aug 2023 01:04:47 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 3 Aug 2023 11:04:36 +0300
Message-ID: <CAP1tNvRt9ohDy3n3AJ1Fzvvqgbv_0V0iVM1urQWOzN2pT-xgpA@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>, 
	Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_010448_324122_ABD0EC34 
X-CRM114-Status: UNSURE (   5.85  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: arm psci_probe() bug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello.

I found a bug in psci processing.
Currently the kernel writes the following on boot:
psci: probing for conduit method from DT.
psci: invalid "method" property:
...

In the psci_probe() function we do the following:
ret = of_property_read_string(dev->of_node, "method", &method);
and use this (method) variable as an argument for of_psci_fixup().
I suspect we are free this variable at of_property_write_string ->
of_set_property > of_delete_property.

Can you confirm my thought and correct it in the right direction?

Thanks!


