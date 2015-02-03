Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YIYxY-0001qI-AF
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 08:35:48 +0000
Date: Tue, 3 Feb 2015 09:35:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150203083526.GH12209@pengutronix.de>
References: <1422709810-30622-1-git-send-email-robert.jarzmik@free.fr>
 <20150202091705.GW12209@pengutronix.de> <8761bkb0ri.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8761bkb0ri.fsf@free.fr>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/3] net: smc1111: add 16 bits accessors, allow
 address shift
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Mon, Feb 02, 2015 at 07:56:33PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > Applied all, thanks
> >
> > Sascha
> Thanks Sascha,
> 
> I noticed that in my patchset I moved the "struct smc91111_accessors {...}" from
> smc9111.c to include/net/smc91111.h.
> 
> This was when I thought the accessors would be settable from platform code. Do
> you want me to send an incremental patch to reverse this ?

That would be great, yes. You can commit the patch with --fixup=commitish
which makes it easy for me to fixup the correct patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
