Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.gnudd.com ([77.43.112.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fftF3-0005wu-5e
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 20:40:11 +0000
Date: Wed, 18 Jul 2018 22:39:24 +0200
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20180718203924.GA22208@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqH0YLC7C70gB2retS0TYusWhTavnV=+X4O-NjXDpV08-w@mail.gmail.com>
References: <CAHQ1cqH0YLC7C70gB2retS0TYusWhTavnV=+X4O-NjXDpV08-w@mail.gmail.com>
 <CAPPP46SniSuaZPfHGgb3YyvwDsW2jz6UwXLaNP5XL1PbF8_eWg@mail.gmail.com>
 <20180718140321.GA28539@mail.gnudd.com>
 <CAPPP46RVU698Uo_Ej2O8N7HETKRGG6aZDkpFA69Ox+tR3DdcGw@mail.gmail.com>
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
Subject: Re: qemu and barebox
To: andrew.smirnov@gmail.com
Cc: barebox@lists.infradead.org, giuseppe.levi@gmail.com

> Not sure if I'd say it would be "complex", but time consuming for
> sure.

Yes.

> but AFAIK, while ARM9 CPU emulation is availible, there's no AT91 SoC
> specific IP blocks emulation that it supports.

I think the fastest way to work out this setup is building barebox for
versatile and using "qemu -M versatilepb".  The WR kernel includes
drivers for the special ethernet device, but the WR port of barebox
has no serious hardware dependencies (it's just uart, flash and i2c
eeprom).  So IMHO there's no need for AT91 SOC emulation to test
different boot procedures.

/alessandro

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
