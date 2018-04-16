Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f81Es-0000xH-M2
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 10:20:01 +0000
Date: Mon, 16 Apr 2018 13:19:39 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20180416101939.yggybypgs3ahr76b@sapphire.tkos.co.il>
References: <38a86524d3ed4ff2b2306a3bb52fb312@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <38a86524d3ed4ff2b2306a3bb52fb312@eckelmann.de>
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
Subject: Re: Question about barebox*/drivers/mfd/mc34704.c and =?utf-8?Q?A?=
 =?utf-8?Q?CCURATE_I=C2=B2C?= mode ...
To: "Mainz, Roland" <R.Mainz@eckelmann.de>
Cc: barebox@lists.infradead.org

Hi Roland,

On Mon, Apr 16, 2018 at 09:52:14AM +0000, Mainz, Roland wrote:
> Two small questions about drivers/mfd/mc34704.c in the barebox codebase:
> 1. mc34704 has an ACCURATE bit (I2CSET1, see =

> https://www.nxp.com/docs/en/data-sheet/MC34704.pdf) which requires that a=
ll =

> read/write commands are send twice - does the barebox code have any suppo=
rt =

> for that in the current versions ?
> 2. Is this "accurate I=B2C communication mode" enabled by that bit a =

> vendor-specific protocol extension or is it part of the I=B2C standard ?

Please send your Barebox related questions to the barebox mailing list. I =

added the list to Cc.

To the best of my knowledge there is no "twice" mode in the I2C standard. T=
he =

mc34704 driver does not seem to support this mode.

baruch

-- =

     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
