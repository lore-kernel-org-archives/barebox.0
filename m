Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout2.ltindia.com ([125.18.18.171])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RlNk5-0001q5-PK
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 16:43:11 +0000
From: G Rajender <G.Rajender@lnties.com>
Date: Thu, 12 Jan 2012 16:43:04 +0000
Message-ID: <260174ADA4D63F4AA543B9C81F2DE71205323640@POCITMSEXMB02.LntUniverse.com>
References: <260174ADA4D63F4AA543B9C81F2DE712053235C0@POCITMSEXMB02.LntUniverse.com>,
 <20120112093127.GA5446@pengutronix.de>
In-Reply-To: <20120112093127.GA5446@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: how to boot from external RAM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I am using  Lauterbauk ARM In Circuit Debugger.
I have done SDRAM initializations in .cmm (batch file) of debugger and configured SDRAM address in make menuconfig.
I am able to download the image in to SDRAM mapped address but unable boot from it.
any suggestions on this. Thanks.

Raj

________________________________________
From: Sascha Hauer [s.hauer@pengutronix.de]
Sent: Thursday, January 12, 2012 3:01 PM
To: G Rajender
Cc: barebox@lists.infradead.org
Subject: Re: how to boot from external RAM

On Wed, Jan 11, 2012 at 04:22:22PM +0000, G Rajender wrote:
> Hi All,
>
> How to boot barebox from External SDRAM??
> Im using iMX35 based board.

How do you get the image into the SDRAM? With a debugger?

However, barebox can start from SDRAM in which case it just skips
the SDRAM initialization and depending on the board some more lowlevel
init steps. Just copy the image somewhere into SDRAM and jump into
it.

Sascha

--
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the intended recipient (s) If you are not the intended recipient, please do not use or disseminate the information, notify the sender and delete it from your system.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
