Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrMYd-0003ch-4s
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 07:21:23 +0000
Date: Mon, 2 Jun 2014 09:21:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140602072101.GU15686@pengutronix.de>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 00/10] miscelleanous beautification patches
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 30, 2014 at 11:07:26AM +0200, Holger Schurig wrote:
> The following patches mostly change the output of various commands.
> 
> Holger Schurig (10):
>   drvlist: factor the driver list out of 'devinfo'
>   devinfo: reduce indentation
>   devinfo: make the output of "devinfo DEVICE" nicer
>   parameters: only show possible enumerations if there are any
>   net: show enetaddr in lowercase
>   meminfo: purely cosmetical changes
>   misc: upper-case some abbreviations
>   bootm: beautify output
>   beautify PHY driver names
>   device drivers: harmonize underscore in driver names

Applied all except 9/10 and 10/10.

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
