Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUa3E-0005lX-Bw
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 12:43:37 +0000
Received: by lbbsx3 with SMTP id sx3so119064024lbb.0
 for <barebox@lists.infradead.org>; Wed, 26 Aug 2015 05:43:13 -0700 (PDT)
Date: Wed, 26 Aug 2015 15:45:23 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20150826154523.3a9caf1f@berta>
In-Reply-To: <1440429055.3066.34.camel@pengutronix.de>
References: <1440084138-3116-1-git-send-email-pmamonov@gmail.com>
 <20150824084910.GG18700@pengutronix.de>
 <20150824173544.6d665f45cf367ab87240997c@gmail.com>
 <1440429055.3066.34.camel@pengutronix.de>
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
Subject: Re: [PATCH] RFC: include/usb/ch9.h: pad usb_endpoint_descriptor
 with 1 byte
To: Lucas Stach <l.stach@pengutronix.de>
Cc: mbr@mail.ru, barebox@lists.infradead.org

On Mon, 24 Aug 2015 17:10:55 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Am Montag, den 24.08.2015, 17:35 +0300 schrieb Antony Pavlov:
> > On Mon, 24 Aug 2015 10:49:10 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > > On Thu, Aug 20, 2015 at 06:22:18PM +0300, Peter Mamonov wrote:
> > > > This patch fixes "Ooops, address error on load or ifetch!",
> > > > caused by "usb" command on MIPS architecture.
> > > > 
> > > > To reproduce the problem follow the following steps:
> > > > 
> > > > 1. Build barebox for MIPS target with -O0 optimization flag:
> > > > 
> > > > diff --git a/Makefile b/Makefile
> > > > index 5a7fd5f..da9a8be 100644
> > > > --- a/Makefile
> > > > +++ b/Makefile
> > > > @@ -301,7 +301,7 @@ CPPFLAGS        := -D__KERNEL__
> > > > -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffre
> > > > 
> > > >  CFLAGS          := -Wall -Wundef -Wstrict-prototypes
> > > > -Wno-trigraphs \ -Werror-implicit-function-declaration \
> > > > -                   -fno-strict-aliasing -fno-common -Os -pipe
> > > > +                   -fno-strict-aliasing -fno-common -O0 -pipe
> > > >  AFLAGS          := -D__ASSEMBLY__
> > > > 
> > > >  LDFLAGS_barebox        := -Map barebox.map
> > > > 
> > > > 2. Plug in a usb flash drive.
> > > > 
> > > > 3. Run the "usb" command:
> > > > 
> > > > 	barebox@QEMU DUNA:/ usb -s
> > > > 	USB: scanning bus for devices...
> > > > 	&(dev->config.interface[0].ep_desc[0].wMaxPacketSize) =
> > > > a042732a Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > > > 	&(dev->config.interface[0].ep_desc[0].wMaxPacketSize) =
> > > > a0429f02 &(dev->config.interface[0].ep_desc[1].wMaxPacketSize)
> > > > = a0429f0b
> > > > 
> > > > 	Ooops, address error on load or ifetch!
> > > > 
> > > > 	$ 0   : 00000000 00000000 a0429f0b a0429de4
> > > > 	$ 4   : 00000000 0000000a 00000000 000687e0
> > > > 	$ 8   : 00000000 00000000 00000000 fa000000
> > > > 	$12   : 00000001 00000004 00000000 00000000
> > > > 	$16   : 00000000 00000000 00000000 00000000
> > > > 	$20   : 00000000 00000000 00000000 00000000
> > > > 	$24   : 00000000 00000000
> > > > 	$28   : 00000000 a03ffb40 a03ffb40 a082e9f4
> > > > 	Hi    : 00000000
> > > > 	Lo    : 00000000
> > > > 	epc   : a082ea38
> > > > 	ra    : a082e9f4
> > > > 	Status: b4000002
> > > > 	Cause : 00008010
> > > > 	Config: 88d0c083
> > > > 
> > > > 	### ERROR ### Please RESET the board ###
> > > > 
> > > > The source of the error is the following line of code from the
> > > > usb_parse_config() function:
> > > > 
> > > > 			le16_to_cpus(&(dev->config.interface[ifno].ep_desc[epno].\
> > > > 							       wMaxPacketSize));
> > > > 
> > > > Which tries to load half-word from an un-aligned address
> > > > 0xa0429f0b stored in v0:
> > > > 
> > > > a082ea38:       94420000        lhu     v0,0(v0)
> > > > 
> > > > 0xa0429f0b is an address of wMaxPacketSize member of a struct
> > > > usb_endpoint_descriptor at offset 4:
> > > > 
> > > > struct usb_endpoint_descriptor {
> > > > 	__u8  bLength;
> > > > 	__u8  bDescriptorType;
> > > > 	__u8  bEndpointAddress;
> > > > 	__u8  bmAttributes;
> > > > 	__le16 wMaxPacketSize;
> > > > 	__u8  bInterval;
> > > > 	__u8  bRefresh;
> > > > 	__u8  bSynchAddress;
> > > > } __attribute__ ((packed));
> > > > 
> > > > The instances of the usb_endpoint_descriptor are stored in a
> > > > "ep_desc" array:
> > > > 
> > > > struct usb_interface {
> > > > 	...
> > > > 	struct usb_endpoint_descriptor
> > > > ep_desc[USB_MAXENDPOINTS]; };
> > > > 
> > > > Since the size of the usb_endpoint_descriptor is odd (9 bytes),
> > > > the second element of the ep_desc array is un-aligned,
> > > > as well as it's member wMaxPacketSize:
> > > > 
> > > > Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > > > &(dev->config.interface[0].ep_desc[0].wMaxPacketSize) = a0429f02
> > > > &(dev->config.interface[0].ep_desc[1].wMaxPacketSize) = a0429f0b
> > > > 
> > > > A possible fix to this problem is to make the size of the
> > > > usb_endpoint_descriptor even. ---
> > > >  include/usb/ch9.h | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > > 
> > > > diff --git a/include/usb/ch9.h b/include/usb/ch9.h
> > > > index ab5d531..5b261e6 100644
> > > > --- a/include/usb/ch9.h
> > > > +++ b/include/usb/ch9.h
> > > > @@ -379,6 +379,7 @@ struct usb_endpoint_descriptor {
> > > >  	/* use USB_DT_ENDPOINT*_SIZE in bLength, not sizeof. */
> > > >  	__u8  bRefresh;
> > > >  	__u8  bSynchAddress;
> > > > +	__u8  fill;
> > > >  } __attribute__ ((packed));
> > > 
> > > This doesn't look very nice since we modify a ch9 defined struct
> > > just for the sake of using it in an array somewhere else. We can
> > > fix it like this, but please add a comment why we need this.
> > 
> > We need some fix here to make EHCI works on MIPS architecture.
> > On the other hand the ch9 header file is used in linux kernel and
> > in U-boot. I don't know, does U-boot EHCI driver works on mips
> > (though AFAIR there was a USB MIPS-related patch several days ago),
> > but linux kernel work with this ch9 header succesfully on MIPS. So
> > another way to fix the problem is to port some code from modern
> > U-boot or linux.
> > 
> The question here is: why isn't the compiler emitting the correct
> instruction?
> 
> Apparently MIPS has a "ulh" instruction to load (possibly) unaligned
> halfwords. The placement of the wMaxPacketSize member is static and
> the compiler should be able to figure out that it may be placed at an
> unaligned position, as requested per the packed attribute attached to
> struct usb_endpoint_descriptor.
> 
> This isn't a problem we should fix in the barebox code unless we know
> exactly why the compiler is doing the wrong thing.

Here is a simple testcase to facilitate the discussion:

  1 #include <stdint.h>
  2 #include <stdio.h>
  3  
  4 struct s {
  5         uint16_t x;
  6         char fill;
  7 } __attribute__ ((packed));                                                                                                        
  8  
  9 int main()
 10 {
 11         struct s a[2];
 12         volatile uint16_t x, *p = &a[1].x;
 13  
 14         printf("&a[0].x = %p\n", &a[0].x);
 15         printf("&a[1].x = %p\n", p);
 16         asm __volatile__ ("lui $0, 0;");
 17         x = *p;
 18         asm __volatile__ ("lui $0, 0;");
 19         return 0;
 20 }


And its output, when run from Linux running on a MIPS target:

# ./unaligned.x
&a[0].x = 0x7fc7414c
&a[1].x = 0x7fc7414f


Clearly, the address of a[1].x is unaligned.

Here is disassembly of "x = *p;", when compiled with -Os option:
  400468:	3c000000 	lui	zero,0x0
  40046c:	93a3001b 	lbu	v1,27(sp)
  400470:	93a2001c 	lbu	v0,28(sp)
  400474:	306300ff 	andi	v1,v1,0xff
  400478:	00031a00 	sll	v1,v1,0x8
  40047c:	304200ff 	andi	v0,v0,0xff
  400480:	00431025 	or	v0,v0,v1
  400484:	a7a2001e 	sh	v0,30(sp)
  400488:	3c000000 	lui	zero,0x0

The value of a[1].x is loaded by two lbu instructions. No problem here.


And here is disassembly of "x = *p;", when compiled with -O0 option:
  400658:       3c000000        lui     zero,0x0
  40065c:       8fc20018        lw      v0,24(s8)
  400660:       94420000        lhu     v0,0(v0)
  400664:       3042ffff        andi    v0,v0,0xffff
  400668:       a7c20022        sh      v0,34(s8)
  40066c:       3c000000        lui     zero,0x0

This code causes Address Error Exception due to lhu accessing unaligned address.
However, when run from linux, this exception is intercepted by the kernel 
and correct behavior is emulated in arch/mips/kernel/unaligned.c.

Finally, the compiler info: mips-linux-gnu-gcc (Sourcery CodeBench Lite 2014.05-27) 4.8.3 20140320 (prerelease)

Regards,
Peter

> 
> Regards,
> Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
