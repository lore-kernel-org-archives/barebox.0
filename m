Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5Qxp-0002ZN-AO
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 09:53:02 +0000
Date: Tue, 11 Aug 2020 11:52:53 +0200
From: David Jander <david@protonic.nl>
Message-ID: <20200811115253.3f9e79ec@erd988>
In-Reply-To: <20200811085847.ut5mfcjbt2bncsro@pengutronix.de>
References: <20200805101628.4698-1-o.rempel@pengutronix.de>
 <20200805101628.4698-13-o.rempel@pengutronix.de>
 <20200811083401.GK9475@pengutronix.de>
 <20200811085847.ut5mfcjbt2bncsro@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 12/13] of: add barebox-serial driver
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 11 Aug 2020 10:58:47 +0200
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> On Tue, Aug 11, 2020 at 10:34:01AM +0200, Sascha Hauer wrote:
> > On Wed, Aug 05, 2020 at 12:16:27PM +0200, Oleksij Rempel wrote:  
> > > Provide a driver which should act as nvmem consumer
> > > for board serial number information.
> > > 
> > > To make use of this driver, DTS should contain a serial
> > > node with compatibe "barebox,serial" and nvmem-cell-names
> > > "serial-number":
> > > 
> > > ...
> > > 	chosen {
> > > 		serial {
> > > 			compatible = "barebox,serial";
> > > 			nvmem-cell-names = "serial-number";
> > > 			nvmem-cells = &some_provider;
> > > 		};
> > > 	};  
> > 
> > This driver only works when the EEPROM or whatever provides the NVMEM
> > contains the serial number in exactly the same format as shall be added
> > to the /serial-number property. This seems to be a special case only and
> > doesn't seem to justify a generic driver.  
> 
> As with usual devicetree based solution we can add additional
> compatibles to better describe a variant or quirk which should be used
> to convert raw data to the serial number in usable for environment and
> device tree way. I hope, by having generic drivers other users will alight
> with it by making new products or extend existing driver by mainlining
> existing products.

Just for information, this is the layout used for I2C EEPROM contents in the
RFID chip (from I2C address 0x6000, device id 0x51):

struct rfid_contents {
        u8 mac[6];
        char serial[10];
        u8 cs;
} __attribute__ ((packed));

The cs field is just the bit-inverted LSB of the sum of all bytes composing
the struct up to cs.

Note, that even boards without ethernet interface use the same struct, but the
MAC address field is ignored and can be anything. The design of this struct is
quite specific, inflexible and not at all future-proof. So maybe it shouldn't
go into a full-blown driver and instead stay hidden in the board code.

Best regards,

-- 
David Jander
Protonic Holland.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
