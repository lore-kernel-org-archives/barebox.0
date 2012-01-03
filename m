Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout2.ltindia.com ([125.18.18.171])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ri0eE-0000Kf-3X
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 09:27:11 +0000
From: G Rajender <G.Rajender@lnties.com>
Date: Tue, 3 Jan 2012 09:27:04 +0000
Message-ID: <260174ADA4D63F4AA543B9C81F2DE7120531CF29@POCITMSEXMB02.LntUniverse.com>
References: <260174ADA4D63F4AA543B9C81F2DE7120531CD14@POCITMSEXMB02.LntUniverse.com>,
 <20120102111027.GG27267@pengutronix.de>
In-Reply-To: <20120102111027.GG27267@pengutronix.de>
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
Subject: RE: Adding New comand
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I want to configure the USB OTG port in iMX35 board as a device by adding a separate command and writing USB OTG peripheral code (firmware) in command function.
This USB OTG of iMX35 board should detect in Windows PC. This is primary goal.
ThanX.

Raj
________________________________________
From: Sascha Hauer [s.hauer@pengutronix.de]
Sent: Monday, January 02, 2012 4:40 PM
To: G Rajender
Cc: barebox@lists.infradead.org
Subject: Re: Adding New comand

On Fri, Dec 30, 2011 at 01:17:49PM +0000, G Rajender wrote:
> Hi All,
>
> How to add a new command in barebox??

Look at some command implementation in commands/*.c and do the same.

>
> Im working on imx35 freescale board based on arm11. I want to add USB
> OTG device stuff and execute on board.

Please be more specific. What exactly do you want to do?

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
