Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S7Rjq-0004x6-39
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 13:26:07 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1S7Rjl-0003TD-GA
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 14:26:01 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 13 Mar 2012 14:25:49 +0100
References: <201203131416.47776.jbe@pengutronix.de>
In-Reply-To: <201203131416.47776.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201203131425.49344.jbe@pengutronix.de>
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
Subject: Re: [RFC] ARM/serial: add a DCC based console driver
To: barebox@lists.infradead.org

Myself wrote:
> [...]
> Sending chars via DCC blocks for ever, when I'm using a simple
> while loop waiting for the DCC_OUTPUT_BUSY to be cleared. After adding a
> timeout loop I receive every other char at the JTAG side. When I write the
> char to the DCC even if it timeout, I receive *every* char. Only some cha=
rs
> are lost when I reduce the timeout value below 750 us.
> Any idea? I checked the kernel source, but they doing the same: Waiting f=
or
> the DCC_OUTPUT_BUSY to be cleared and timeout after a specific amount of
> loops (but without writing the char in this case).
> [...]

Forget about that. The dcc_serial_putc() is broken in this patch. My ARMv5 =

*always* signals a DCC_OUTPUT_BUSY. If I ignore this bit and just wait abou=
t =

750 =B5s between the chars it works as expected. Still have to find out, wh=
y it =

always signals a DCC_OUTPUT_BUSY...

jbe

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
