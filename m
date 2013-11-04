Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdLlS-0006HX-8L
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 15:08:28 +0000
Date: Mon, 4 Nov 2013 16:07:55 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20131104160755.6fbae688@e6520eb>
In-Reply-To: <5277B6A1.3010106@kiwigrid.com>
References: <52778B89.3000208@kiwigrid.com> <20131104134847.6d9a5e8c@e6520eb>
 <5277B6A1.3010106@kiwigrid.com>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox on i.MX53 in serial downloader boot mode
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

Hi Wjatscheslaw,

Le Mon, 04 Nov 2013 16:00:49 +0100,
"Wjatscheslaw Stoljarski (Slawa)"
<wjatscheslaw.stoljarski@kiwigrid.com> a =E9crit :

> On 11/04/2013 01:48 PM, Eric B=E9nard wrote:
> > Hi,
> >> has anyone tried to start barebox on i.MX53 in 11 boot mode (serial
> >> downloader)? I've tried on Freescale Loco board with pmic da9053, but
> >> without success. In 00 boot mode (internal boot) works perfectly. U-Bo=
ot
> >> works in both modes. DCD in u-boot and in barebox is the same. Even I
> >> can turn on LEDs with DCD in 11 boot mode on Loco.
> >>
> > works fine here, what are you using to download barebox ?
> I'm using imx-usb-loader. But I've tried MfgTool from Freescale too with =

> the same result.
> =

ok sorry it's working here (on a custom board) in 11 boot mode but using
serial port to load it. IIRC USB was only tested in 00 as a fallback
when NAND flash is blank.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
