Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffmtT-0003BB-Pp
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 13:53:29 +0000
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
 <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
From: Bastian Stender <bst@pengutronix.de>
Message-ID: <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
Date: Wed, 18 Jul 2018 15:53:13 +0200
MIME-Version: 1.0
In-Reply-To: <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
Content-Language: en-US
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MFGtools support in barebox
To: Oleksij Rempel <linux@rempel-privat.de>, Mihaita Ivascu <mihaita_ivascu@trimble.com>, barebox@lists.infradead.org

Hi,

On 07/18/2018 03:01 PM, Oleksij Rempel wrote:
> you email is in the list. (well, different version of it are already
> in the list). Please wait if some one can respond here.
> 
> I'm not an expert, but probably what you need is
> https://github.com/rauc

Have a look here:

http://rauc.readthedocs.io/en/latest/advanced.html#updating-the-bootloader

Updating barebox on NAND is not yet implemented. It would certainly be a
nice feature to have. Have a look in section 7.6.2 if you want to do that.

Regards,
Bastian

-- 
Pengutronix e.K.
Industrial Linux Solutions
http://www.pengutronix.de/
Peiner Str. 6-8, 31137 Hildesheim, Germany
Amtsgericht Hildesheim, HRA 2686

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
