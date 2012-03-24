Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBMga-0000Fw-Ap
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 08:50:57 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 24 Mar 2012 09:50:24 +0100
References: <CAM9uW_6qLEEmNFtTxLxNHx86zzFnHRfxB+1pm+VfRfjf4FrfBg@mail.gmail.com>
 <201203230922.42378.jbe@pengutronix.de>
 <CAM9uW_6jvdqyoz2sk+uVJj086vrq3kU2fP5HW4Yzy41sU4qO_A@mail.gmail.com>
In-Reply-To: <CAM9uW_6jvdqyoz2sk+uVJj086vrq3kU2fP5HW4Yzy41sU4qO_A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201203240950.25075.jbe@pengutronix.de>
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
Subject: Re: Fwd: Network Issue with Mini2440
To: barebox@lists.infradead.org

Hi Kamel,

Kamel BOUHARA wrote:
> Ok, it light me on the way that my board don't use an eeprom to set the FEC
> address so I probably have to fix that somewhere ...maybe a macro #define
> NO_EEPROM or something like that ??

You do not need an EEPROM for the MAC address. Setting a random one should do 
the trick. The Mini6410 also has no EEPROM. The message is a little bit 
confusing. It only shows the already set MAC address in the DM9000.

> Can you, please, show me the *md -s /dev/phy0* command output from you
> mini6410.

mini6410:/ md -s /dev/phy0
00000000: 78693100 b8a00181 45e101e1 00000003                .1ix.......E....
00000010: 00000000 00000000 00000000 00000000                ................
00000020: 80180414 00007800 00000080 00000000                .....x..........
00000030: 000004e1 00000000 00000000 00000000                ................

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
