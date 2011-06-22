Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 98.mail-out.ovh.net ([91.121.185.91])
	by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QZHmQ-0005AO-01
	for barebox@lists.infradead.org; Wed, 22 Jun 2011 07:23:19 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id 0C0DD4B68B6
	for <barebox@lists.infradead.org>;
	Wed, 22 Jun 2011 09:22:56 +0200 (CEST)
Date: Wed, 22 Jun 2011 09:08:45 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110622070845.GY7881@game.jcrosoft.org>
References: <1308232556-12394-1-git-send-email-h.feurstein@gmail.com>
	<20110621125612.GV7881@game.jcrosoft.org>
	<BANLkTin-bmxQooWJAp7sRBU6bimNx0ogYA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTin-bmxQooWJAp7sRBU6bimNx0ogYA@mail.gmail.com>
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
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On 23:51 Tue 21 Jun     , Hubert Feurstein wrote:
> 2011/6/21 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
> >> @@ -47,6 +48,7 @@ void at91_add_device_nand(struct atmel_nand_data *da=
ta);
> >> =A0struct at91_ether_platform_data {
> >> =A0 =A0 =A0 unsigned int flags;
> >> =A0 =A0 =A0 int phy_addr;
> >> + =A0 =A0 int (*get_ethaddr)(struct eth_device*, unsigned char *adr);
> > can we find a generic way?
> a generic way would be to simply call
> 'dev_set_param(get_device_by_name("eth0"), "ethaddr", macbuffer)'
> somewhere after at91_add_device_eth(...) in your init. Then you don't
> need the callback at all to setup the mac-address.
I more in mind an api to update the get/set_ethaddr without specific hookin
each driver

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
