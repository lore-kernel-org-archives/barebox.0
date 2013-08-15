Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp53.i.mail.ru ([94.100.177.113])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VA3ID-0007Ds-WB
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 19:33:11 +0000
Date: Thu, 15 Aug 2013 23:32:41 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20130815233241.67b6727ce65114b59807f8ea@mail.ru>
In-Reply-To: <20130813062607.GQ26614@pengutronix.de>
References: <1376107853.217410060@f319.i.mail.ru>
 <20130812070759.GL26614@pengutronix.de>
 <1376305016.963613355@f136.i.mail.ru>
 <20130813062607.GQ26614@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: PCM038 USB is broken again
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 13 Aug 2013 08:26:07 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Aug 12, 2013 at 02:56:56PM +0400, Alexander Shiyan wrote:
> > ...
> > And yes, this works after "usb" command:
> > barebox@ConnectCore i.MX51:/ usb
> > USB: scanning bus for devices...
> > Found NXP ISP150x ULPI transceiver (0x04cc:0x1504).
> > Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > 1 USB Device(s) found
> > 
> > So, you consider this is not a bug?
> 
> Doing the initialization twice is not nice and wasn't intended, so
> indeed this is something worth fixing.

Datasheet MCIMX51RM.pdf says:
60.3.8 ULPI/Serial MUX
Host1, Host2, and OTG cores can be configured by software for ULPI or Serial PHY operation. The
ULPI/Serial mux selects between ULPI interface signals and Serial PHY interface signals. The mux is
controlled by the PHY Select signals from the USB core and is switched when the software selects the
interface mode.
The default configuration for the mux is Serial mode. Switching to ULPI mode is done by writing the
Parallel Transceiver Select (PTS) bits in the PORTSC register with 0b10.

So, we need to setup PORTSC to ULPI mode first.

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
