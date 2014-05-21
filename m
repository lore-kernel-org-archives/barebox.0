Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn6vT-00087Y-Uf
 for barebox@lists.infradead.org; Wed, 21 May 2014 13:51:24 +0000
Date: Wed, 21 May 2014 15:51:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140521135101.GM5858@pengutronix.de>
References: <1400606875.26128.1.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400606875.26128.1.camel@mars>
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
Subject: Re: [PATCH] commands: add 'findstr' to get string from file
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

Hi Christoph,

On Tue, May 20, 2014 at 07:27:55PM +0200, Christoph Fritz wrote:
> Command 'findstr' can be for example used to find the string
> "MAC=1C:BA:8C:F3:82:BB" in file /dev/eeprom0 to set the
> appropriate variable:
> 
>  $ findstr -o 4 -l 17 -t eth0.ethaddr MAC /dev/eeprom0
> 
> Usage: findstr [OPTIONS] <STRING> <FILE>
> Find string in file and print it
> -o <offset>     set offset of string which gets printed
> -l <length>     set length of string which gets printed
> -t <var>        print into variable instead of stdio

I wonder how useful such a command is. I mean normally I would
expect a MAC address to be stored in binary format and not ASCII.
Matching 'MAC' (what about the '='?) seems not very robust. What about
strings with dynamic lengths?
If the command is primarily intended for the MAC address then maybe
a more dedicated command or a piece of code called from board code
is more robust. If the command is intended as a general
eeprom-variable-store then I think it's not flexible enough.

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
