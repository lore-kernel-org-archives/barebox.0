Delivery-date: Thu, 19 May 2022 14:44:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrfW2-0024Oi-LZ
	for lore@lore.pengutronix.de; Thu, 19 May 2022 14:44:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrfW1-0005jW-1n
	for lore@pengutronix.de; Thu, 19 May 2022 14:44:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3RP257MOStV5KWX1Dq9DcBpK07W5pY8xZi1YIrwrek=; b=ShmAnST8U42Ixn
	57TODl7Sw8rs6IVQ6TTLu086spyxaNWOBzox4K+IoaN4KMJ4XxckuMtHPpeHEHJlSgQ3saiLN0jK2
	Gjr8F+pmHfE81Y/oYEQ8KPgmdUFuh/hUAbndOgqVogvIAbr0oWfQvqlfERDOTWZRBS0kkv4wfMwBx
	LhQ6m1PyFaJkeLTk8Q1UeFvE14jJubXSi9ggY96uC+pgAsmcb3zlLUnhGUr5kG/LDb6XIgUCcaxIO
	lBS+s+RLDe/kV7a+4aJkq5XPTek0xfvnA8ITpnLERvL5fJz5L0NdGJ2gUG7pxcgvNUUhyR+9QsKYT
	1U2qO6babCOmyXh9C7oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrfUm-006inX-MN; Thu, 19 May 2022 12:43:12 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrfUg-006ikF-S9
 for barebox@lists.infradead.org; Thu, 19 May 2022 12:43:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1652964180;
 bh=zXNS+odwYWs6mva9bfn+FFTQNx9SqtLESzBTHEkKM/E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PLrqWxz6XFGYZXbGijZXTHTTtGRQrnnNkQ/t/LB2fS5LO5JFWTsQxlP9D8eCHljAe
 +oaE/9zR2DABmcL9PntIL/McpKxC1chLZdb/+exBM7YdZujoDyS0Wo90oonJHlVe7O
 6AtP2TJBEp7lEgVkdeGy/e4qhnyvSopx8whT33ws=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.151.76] ([217.61.151.76]) by web-mail.gmx.net
 (3c-app-gmx-bs49.server.lan [172.19.170.102]) (via HTTP); Thu, 19 May 2022
 14:43:00 +0200
MIME-Version: 1.0
Message-ID: <trinity-e8816284-959b-432a-bb6a-f33a6cd573df-1652964180567@3c-app-gmx-bs49>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Thu, 19 May 2022 14:43:00 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220519115450.GV25578@pengutronix.de>
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
 <20220519115450.GV25578@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:/rlsTW9WLkGT7KFgwWK1jlRpAwKzK3Oi5+Vs+h+ajnX+ePqT9uGZuni7eWtOvGT9psL4V
 d2cxkJM0+hMWZjaAlHDaDRvHVWRbc2AqG+am50DC4prbfUkZUaMvV5l1aV4Q63qZN3fiy9B7hPPH
 FCvdxcg209NcXjv6nPJB0aClTaeJH4R9eCI8G+652L0h/mIea0123yTCsvPQXCWSEnxg3TPp+eoB
 N+Vrm/W4VmIFaalCymJaAdbZI/4qe05Vu5G84x1DxjvLQtLLh3CYy5jtg6Pn7Rhp0RIPgHNFa1R4
 fY=
X-UI-Out-Filterresults: notjunk:1;V03:K0:4wPgrSbexiE=:PQ+qDSuWM2+UUotEMpHqVN
 Hk2dWsJrT1kRgmlLy0FTeYr//N7b4eCmMp2tacvdnZfvyWJETUQs1QTX2QslBjqME/Z56NMxL
 RYRtrFtePNZWODR8ICwlTYjhBXH6sK6vnO9EPYMtcn+jYZr5EVpM1f5u013B1ImCjy/8c45Tq
 dQs/jTrHh04K/G7gPbua1sJ+ULnDN8PcseEub+JaUvwSDeE8rx11SiD7B9FLmfZxKtSUFyjCE
 TJCwLvo9OSEOk3YtFMiEXzCsl32PvxB47lMFxLAc3mcsn69rxfplOO+c7F3GvXGCOyKqRo7/b
 QZ9SbK+KQm3ozDfAS6wTaKC8/3BxWa61Ty2Xb1Y6oeei8kH6ClEDK4JQ/m1uIRGIH4boaFg2z
 UWiyd3nF4vRgPz2cEiKnx2bfELM+p2RsCOlBNd7QatLPymt6R0rhA1QzxAOGuEyJYVTiBNmhx
 H9gcT3QzEGqL4BkMQc/h/6+QrmvMp6lRW7nG22mP4m59Dur6WqUocIFMC5mneMBeR8XRzpeWZ
 CetU6fl2aWiIfz4Mub+gQ/T8pXQ634rhgfw95mGlH+X+brMcbRT5/WMQfZNdHjCCaTUfSoSQK
 +yYSWgMvqXCRXHay/0WKdDltBIR4J1FbgMITjAWNcAshECbc5+Rut5b8G/y3oidClwMt9vSrG
 F5fXMpM5zyiKhf/m8rRvh8+q+boX+sUCNsOdmpdt1RiEt2OCGcVpST+VdTVGte6r/rKuv4vIM
 2zO7ttz3Ug+S9oHmEreTLB+o/ciIOmsqvEgtOak2fYKVoYaoJZIxNW9l6yzRlBTHoTLx5HeA8
 2raDea0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_054307_239944_D8295095 
X-CRM114-Status: GOOD (  31.75  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Aw: Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,
> Gesendet: Donnerstag, 19. Mai 2022 um 13:54 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>
> An: "Frank Wunderlich" <frank-w@public-files.de>
> Cc: barebox@lists.infradead.org
> Betreff: Re: Driver load order
>
> Hi Frank,
>
> On Thu, May 19, 2022 at 12:59:35PM +0200, Frank Wunderlich wrote:
> > Hi,
> >
> > I try to create a basic driver for rk808 pmic/iodomains. I've noticed
> > that first the iodomain driver is probed and then the rk808 on,but i
> > need it reversed as rk808 registers regulators linked in iodomain via
> > devicetree.
> >
> > How can i defer iodomain probing till rk808 is ready (regulators
> > available defined as phandles in iodomain dt node)? Currently i get
> > always ENODEV (property does not exist or regulator is not ready
> > yet)....
>
> Your board has deep probe enabled. The idea with deep probe is that the
> devices for a specific device node are registered on demand instead of
> any particular order. Basically this means that once you do a
> regulator_get() the regulator will be registered automatically for you
> without having to mess with the probe order.

regulator_get returns Null in my case. So imho i need to register
the regulators from the rk808, right?

currently i probe the rk808 and do a double child-loop (first subnodes,
second subnode "regulators"). Then i have the regulator node itself and
i can do something like this:

struct regulator_dev *rd;
ret=of_regulator_register(rd,regchild);

including the loops to have the context:

        struct device_node *child,*regchild;
        for_each_child_of_node(dev->device_node, child) {
                if (!strcmp(child->name,"regulators"))
                {
                        dev_info(dev, "DEBUG %s:%d regulators found\n",__FUNCTION__,__LINE__);
                        for_each_child_of_node(child, regchild) {
                                struct regulator_dev *rd;
                                ret=of_regulator_register(rd,regchild);
                        }
                }
        }


> That said I'm not sure if that works properly with regulators yet. For
> deep probe to work there must be a device registered for the device node
> representing the regulator. Currently this is not the case, there will
> only be a device for the "rockchip,rk808" device node, but not for the
> regulator child nodes.

as an idea i would do something like this in the iodomain-drivers probe:

if (!pmic_probed())
       return -EPROBE_DEFER

but how can i check the pmic is probed? to delay the probing of the
iodomain driver. I check if the linked phandles are there and
not registered...here i get -ENODEV (-19), but if the proeprty does
not exist i get Null from of_regulator_get(). Basicly i can defer the
probe there (kernel and my current code do a continue here), but i
think it's better to do it before looping over the properties of iodomain.

> I haven't found a suitable test setup to have a deeper look. If you
> could bring your rk808 driver up to a point where it actually registers
> the regulators then I could add the missing pieces in the regulator core
> for you.
>
> Sascha

@ahmad: thanks for your driver. Take a quick look into it...

it seems nearly complete, is there anything not working or was the only
problem the missing regmap-handling added in part1?

My current approach is only register the regulators without doing a real
pmic init. IO-Domain driver only needs to read out regulator voltage, i'm
not sure if it's enough to get the value from the DT or if it needs to be
really measured (to depend on complete probe/init of the pmic).

but the problem is that iodomain is probed before the pmic due to deep-probing
if i understand Sascha the right way. So i need a way to defer the iodomain driver
probe till rk808 is ready.

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

