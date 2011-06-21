Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QZ8rE-0004Qi-Kl
	for barebox@lists.infradead.org; Tue, 21 Jun 2011 21:51:42 +0000
Received: by gyh4 with SMTP id 4so106064gyh.36
	for <barebox@lists.infradead.org>; Tue, 21 Jun 2011 14:51:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110621125612.GV7881@game.jcrosoft.org>
References: <1308232556-12394-1-git-send-email-h.feurstein@gmail.com>
	<20110621125612.GV7881@game.jcrosoft.org>
Date: Tue, 21 Jun 2011 23:51:35 +0200
Message-ID: <BANLkTin-bmxQooWJAp7sRBU6bimNx0ogYA@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] macb: add support for board specific get_ethaddr function
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

2011/6/21 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
>> @@ -47,6 +48,7 @@ void at91_add_device_nand(struct atmel_nand_data *data=
);
>> =A0struct at91_ether_platform_data {
>> =A0 =A0 =A0 unsigned int flags;
>> =A0 =A0 =A0 int phy_addr;
>> + =A0 =A0 int (*get_ethaddr)(struct eth_device*, unsigned char *adr);
> can we find a generic way?
a generic way would be to simply call
'dev_set_param(get_device_by_name("eth0"), "ethaddr", macbuffer)'
somewhere after at91_add_device_eth(...) in your init. Then you don't
need the callback at all to setup the mac-address.

Best Regards
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
