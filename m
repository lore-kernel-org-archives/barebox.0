Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT5dC-0003l5-4a
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 11:39:23 +0000
Date: Mon, 16 Jan 2017 12:38:57 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20170116113857.m6xdak4ir53pzo42@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
 <CAAfyv35FkKMn_7LKbcd3gXsTdMqR1F9WKr_WRVb+TF0AB+5LWg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAfyv35FkKMn_7LKbcd3gXsTdMqR1F9WKr_WRVb+TF0AB+5LWg@mail.gmail.com>
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
Subject: Re: i.MX7 support
To: Belisko Marek <marek.belisko@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 16, 2017 at 12:02:47PM +0100, Belisko Marek wrote:
> > One issue remaining is that I am currently unable to reset the board
> > using the watchdog or the barebox reset command. Out of ideas, will
> > fix later.
>
> imx7 has know problem that cannot be reset by softreset only by
> external signal as Fabio suggested.

Do you have a reference what exactly is broken? I didn't find anything
reset- or watchdog related in the errata sheet.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
