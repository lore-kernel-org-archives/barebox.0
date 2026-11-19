Delivery-date: Thu, 19 Nov 2026 15:21:24 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU30u-0017kj-00
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 15:21:24 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 080CA205821
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 15:21:24 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nNWZ2uet;
	dkim=pass header.d=gmail.com header.s=20260707 header.b=OZ4Xm51E;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795098084;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=WFPzEP1CQaNv5tlBMvPrjuhLMgSxW8/oJcpBOesIRuo=;
	b=J6dL/P7volo/uAQynTJOjI7vYpRUOffGXENgFjTajLdyfJHia89Uk+lPhn5kGA95XAhI45
	VZ+NS+53f4jskx5xwnFcqCEg1kpY0z9H/WaT48u1aTdS7WukAs+dpAWa+CUMLZRj+EjuEP
	ACZAzIuPfQfHTJqo/RK2+UqYpth05IAXH+XhSPZU6ZnEOuZCRcHzGpnyFzdQbqo8yNk+UR
	S2PkUrrh7JL+sOFKJV8aM7NWCLk4Proq277vU2MYsfiQusC7Kro7roOL2mO0mj6SutiaPi
	8Ree4OBi6lzYvbIX4Dlt0M2f/yFQEDw58VNYKVE2Ra69wnYTUvZFPuMQXW/IYQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795098084; a=rsa-sha256;
	cv=pass;
	b=H4i122XMEyFL+I14QMLCVc7KrMmNobgP8UjbDsCQJ3Xx2wPXJR9VvDOXCWaohINMLolMt+
	wEm0QLJTaY/jLduTcYbIC864Y71FqakwIJzxaADoIf/sxCeWZVNGCwE54JnHe+G7kKCgZy
	L034+kzXKpujtsIBldPoqNjVnZu9LtbZpQs38I+PonMAuEeB+cQt7NlF6qgyZAiDhGtag2
	zJoadwP7+04khF2o3bWHd8xMSJgqk8ToZ5GsXP+0dtX+hCmm7WG4w6usulKIzO1fbHxZeD
	kQB3tCHJcZU/s4Ku1+O9xFbS08Ofrt5bqH87huxjkAheNN/AfMtzGIfOmWwpUA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nNWZ2uet;
	dkim=pass header.d=gmail.com header.s=20260707 header.b=OZ4Xm51E;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=WFPzEP1CQaNv5tlBMvPrjuhLMgSxW8/oJcpBOesIRuo=; b=nNWZ2uetTxyMCTViCM1pRfa3CT
	LPk7mvBCeCjS6b9aZnJvAf4Z74mczcYfju5jRA6pE2ToXadPZo9AmYyFdkx+zVSMHp7NchHZW1sZ2
	HxEOBK8A5718gu5a7n8ZuWOvYRxCaOA9ShyHSD9m8dtAnJTmwzyz1OVi3b0NexDK95e46z7fK6pai
	4SMnVX9wAFbE4eZQ0pNY/BhRcrst1I7OT9jPoJmDTHxkQTjuLckJ27OQJur6BOHnViqJF1DuQ+Y5c
	eNZ4uUH6mJCr7UxqA1jZJpWiqJPEj7+FVZxkYgetLcO3zWkET0tHirsKsDYL8pr9FoEQLbZnpDb5n
	SsQIfJlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2zY-0000000CCcm-1Y86;
	Thu, 19 Nov 2026 14:20:00 +0000
Received: from mail-dl1-x122a.google.com ([2607:f8b0:4864:20::122a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2zW-0000000CCba-0MHT
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 14:19:59 +0000
Received: by mail-dl1-x122a.google.com with SMTP id a92af1059eb24-1b50a4bd2f3so3603956c88.1
        for <barebox@lists.infradead.org>; Thu, 19 Nov 2026 06:19:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795097997; cv=none;
        d=google.com; s=arc-20260327;
        b=IrS0Hvry1xN/LUZT/clNWH6mv68upz2CqpZgJgfhdxbFj3E8MLaos2R4f3UoitQf7Y
         Aa87kZOhbZME9kTsxTn4A1u23nyOSzZXGtdo6auvaSY+QxH8VEZ8UfwIs4IUMZ9wM8w+
         PVpP8VeuWNnxhPJTceqrIJKqmJe5JB18c3YCOKgjozcOo2w4gxrPoHp/Gk2CNyytSOdP
         GwKd47F+ptcue6xG4pl5+pNGVOMPHei6BbEG4pXc8YAV8Q/2q3A9OyGU/ynBQQiItR4s
         rxeGSt4Lr6SAKDT96QEyCq4FPKNejNTZ1LfFkkRRqxEkN2+bsDKUSq3y9t85i1KNrACv
         gt+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=WFPzEP1CQaNv5tlBMvPrjuhLMgSxW8/oJcpBOesIRuo=;
        fh=nDWr/NGBxypLRpXDDzp3G+TPW5FTTeYIsyMzIh7BKA8=;
        b=HqXRvak4NJ1KTzLlXi4bx+fHnsAT3bX6Gn94YbjxMw6U7+lXPV4vsKmlc2t6Yy4xLB
         fC/1K1dIg1vspkJfms8/vqYw3eI5tHffNifXBtn7aOSWmbMmF/uwwxPZdHHXjk8yUIes
         92HAIz27TW8tDk5liYLe+jwMitHqMy06vILJefyIx5dBwN7uyF4d8I1QPyuYZrZGuvxf
         MSUpynUbR4BZfINGMg9e5hG7113/qd86ts3Imyg3wprEWATP++Q80u+Pv71GcvKK7ysE
         907D4lJ6LokXcvxE8pAtLQ3+nDXiFUBvkA3MuizA+FSYnLrVPjoIYJhgzBCCFbpfHoDC
         ZfOg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795097997; x=1795702797; darn=lists.infradead.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=WFPzEP1CQaNv5tlBMvPrjuhLMgSxW8/oJcpBOesIRuo=;
        b=OZ4Xm51E8sl0MqJn/p9mm2trGYXvz01Kg2I+LbAMx/LjPMs1/FzhmQ0ghJHhaqAowd
         8nXdOpJw/CBJAVYPhve3uLPUVuKsTNIBZMujl8qoOUzmAxiyBKmW3EBgMXG7I1h2lf+r
         gwuD5sIJaqhWTJNZwdbpQuA67SGy7mF4bX/gjyG/1Dxj+0iIutttPKcQ8JYbfB9ypY4A
         T+mBTtPYZHYlf7oG5giSb1j8u1Oha3cXCpVR9JekTJnprXjjpCNGEVbnvkLTaAJF9xci
         1YA1nAS6taYA9xMRFya7rAxJuJPv6TUcnmtjWlerTVwxyfb1Kpx1S3e6T7PJA55sufrr
         XMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795097997; x=1795702797;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WFPzEP1CQaNv5tlBMvPrjuhLMgSxW8/oJcpBOesIRuo=;
        b=a5u7poc541jvqG7rp+dy0sHEbJ2gKZLSUmhrqLvhs+7c9EdyLrYTY9VTpoFXQNIsyw
         ksU7khw2W1hT0hS1UcuPBfJo+pWUnLBkOM7d1Ez4Z2Y9wpwCdVImS8y6CgPnl1ncAwPG
         vn2pue+8YozVTJ0GST72c70Ff5o2ffYc1sv/2zRiaRH0jB0RSfGNv8nuKyJLWoZQ53wq
         +OObJhUGnh/+LWgv7AKQgqhlXFpJp/DvuqHy3TNw1UgY0DQ7U7Q0CKEn5p5C11YaZU6i
         pem1IxUp9uf+snvUtjSGGQjZCVMlpTo/PfJY+vn8Np+IKMKY7Whw2oZ+WHMfuLWo8ijh
         vtgg==
X-Gm-Message-State: APuU4Z+WrkwU7MTVjYu1HkQOUycDcMpjp1yejbM10UOv7qT+Uq4Xlq/M
	/5fRrqYP6Fcx18N34CSJPGSEw5kjaei87hzgfkUVEx2BV02b35UToCW3RBo+mIgSgoZAfnT3FB0
	NGf8kj7P9MhzxapUL9y35hOW+o+n9ilVzEFSGebrQPw==
X-Gm-Gg: AYBFou2y3/zjcvFZstFn/hJ+rpZRINZb3nN8woBFXkRMLD8v3tWgcBvan739D/Xzg8f
	jivr8SrXFDfgUsVsLANSpc30GrjVxTUeKb1YzGg3q/NEbJXVI3crQEjBnNr53uaYDHBZqSRc3Yy
	hA648yL6rfXLmA89FZ1wjniM4BPiCbpIjlPILDlT8v5a1V4cFntGSyxlcA2Qxvv6VpxoHEZjarw
	87n8ZQ7LW8fmfxLFqvQ1nvKfiTVERb4i1GNwhoAl1bkRlS6HCqqNnEdX4u+tBr9ulAJDxqdOVFp
	86jUw7EoKeAluUl7r9pGG9TNooXXcOnzbIV0IoeAZYOtKrF1KEMXcwx6tmAcYkq/akmZtII27dl
	qgDA29nmJPWIHeKQO+boRvj3nywuPdmkGmSDWTA==
X-Received: by 2002:a05:7022:171c:b0:1b3:bdd9:cc6d with SMTP id
 a92af1059eb24-1b543d276famr5212848c88.32.1795097997114; Thu, 19 Nov 2026
 06:19:57 -0800 (PST)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 19 Nov 2026 17:19:44 +0300
X-Gm-Features: AclHuK-j_-hADYnDpXMUMNOK7nlZkMwZRzi5PkB2Yi-geYgUrbGh223-jZz8Row
Message-ID: <CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FVL93czrtFA@mail.gmail.com>
Subject: Strange bug with supply dependency
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_061958_130558_DEBB4827 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello All. I have the following DTS fragment: exp: gpio@22
    { compatible = "nxp,pcal6524"; reg = <0x22>; gpio-controller; #gpio-cells
    = <2>; // vcc-supply = <&vcc_1v8>; }; 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:122a listed in]
                             [list.dnswl.org]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20260707];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	DBL_PROHIBIT(0.00)[0.0.0.23:email,0.0.0.22:email];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::122a:received];
	MISSING_XM_UA(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 080CA205821
X-Rspamd-Server: mx1
X-Stat-Signature: qcx1jrqm7sr8j1fk7rtmshbieyn5ydud

Hello All.

I have the following DTS fragment:

exp: gpio@22 {
  compatible = "nxp,pcal6524";
  reg = <0x22>;
  gpio-controller;
  #gpio-cells = <2>;
//  vcc-supply = <&vcc_1v8>;
};

pmic@23 {
  pinctrl-names = "default";
  pinctrl-0 = <&pmic_pins &rk806_dvs1 &rk806_dvs2 &rk806_dvs3>;
  compatible = "rockchip,rk806";
  reg = <0x23>;
...
  regulators {
...
    vcc_1v8: dcdc-reg10 {
      regulator-name = "vcc_1v8";
      regulator-always-on;
      regulator-boot-on;
      regulator-min-microvolt = <1800000>;
      regulator-max-microvolt = <1800000>;

      regulator-state-mem {
        regulator-on-in-suspend;
        regulator-suspend-microvolt = <1800000>;
      };
   };
...

Uncommenting the "vcc-supply" line causes the PMIC driver to silently
fail to load,
which in turn breaks all devices powered by the PMIC.
None of the expander's GPIOs are used anywhere.
When this line is commented out, everything works as expected.
Is there some sort of dependency from sharing the same bus?

Thanks!


