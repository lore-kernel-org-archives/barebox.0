Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr40112.outbound.protection.outlook.com
 ([40.107.4.112] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuf53-0000r0-Mb
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 16:11:43 +0000
From: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Date: Thu, 23 Jan 2020 16:11:36 +0000
Message-ID: <DB8PR03MB5498CAEC36BC061CA93813D2FE0F0@DB8PR03MB5498.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <1579099664.13056.29.camel@pengutronix.de>
 <AM6PR03MB54939235100D4D6E455AF4C1FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
 <1c275d4d-cf23-caf5-072e-2517080950c1@pengutronix.de>
 <DB8PR03MB54985379C7F9387F160929E7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <0a8e32e7-7100-e834-97c8-de27959e41dd@gmail.com>
 <DB8PR03MB549871DF5E2805242C71347AFE0F0@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <88f6a8d6-872d-62ea-9113-1c9a4983e300@pengutronix.de>
In-Reply-To: <88f6a8d6-872d-62ea-9113-1c9a4983e300@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [yocto] #yocto bootchooser: Cannot get state 'state'
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>, Enrico Joerns <ejo@pengutronix.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Ahmad,

> 
> Hello,
> 
> On 1/23/20 4:30 PM, Hans-Ulrich Schlieben wrote:
> > Hi Robert,
> > 
> > there where no SDK, bison and flex missing. Now it compiled. Thanx.
> > There are 
> > 
> > Copying it onto the system and running it from the console just returned error code 132 and: 
> > Illegal instruction
> 
> Running what?
The barebox executable in the barebox folder, not some image. The executable starts with ELF so it should run, shouldn't it?
In the barebox README states:  The barebox image is a normal Linux executable, so it can be started  just like every other program

> > I copied the .config file from yocto into the barebox directory. Do I have still the wrong architecture?
> > 
> > Perhaps I have to copy  ./images/barebox-phytec-phycard-imx6q-1gib.img onto the destination system starting at offset 0x1000 using dd.
> > How to copy barebox onto the sdcard? There is no setupmbr executable in ./scripts/setupmbr, just a c file and no working Makefile.
> 
> barebox already has the dcd offset in, just dd the correct image to the start of your SD-Card and it should work.
Wait, just running dd if= bareboximagefile of=/dev/mmcblk0 would just kill my Partitiontable in sector 0. 
When I look into the bareboximagefile I see two sections starting with something like barebox.......UUUUUUUUUUUUUUUUUUUUUUUUUU at offset 0 and offset 0x1000.
The part at 0x1000 resembles more what I see on my sdcard on offset 0x1000 so my approach would be to
dd if= bareboximagefile of=/dev/mmcblk0 bs=512 offset=8 skip=8.
What do you think?

> 
> Cheers
> Ahmad
> 
> 
Thank you and Best Regards

hu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
