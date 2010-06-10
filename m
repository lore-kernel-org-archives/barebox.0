Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMh9g-00009v-1O
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 12:46:46 +0000
Received: from sivan.tkos.co.il (guitar.tcltek.co.il [192.115.133.116])
	by tango.tkos.co.il (8.14.4/8.12.11) with ESMTP id o5ACkcij017725
	for <barebox@lists.infradead.org>; Thu, 10 Jun 2010 15:46:38 +0300
Received: from jasper.tkos.co.il (taragon.tkos.co.il [10.0.4.3])
	by sivan.tkos.co.il (Postfix) with ESMTP id C1564B4F98
	for <barebox@lists.infradead.org>; Thu, 10 Jun 2010 15:46:33 +0300 (IDT)
Date: Thu, 10 Jun 2010 15:46:32 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100610124632.GI31840@jasper.tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
	<f9f84cc251848d133fae379e6d20253df2121ffb.1276065824.git.baruch@tkos.co.il>
	<20100610111237.GH20799@pengutronix.de>
	<20100610114939.GF31840@jasper.tkos.co.il>
	<20100610121208.GO20799@pengutronix.de>
	<20100610124246.GG31840@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Fba/0zbH8Xs+Fj9o"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20100610124246.GG31840@jasper.tkos.co.il>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 8/8] mx25 3ds: add support for boot from UART
To: barebox@lists.infradead.org


--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Sascha,

Now really attaching the files.

baruch

On Thu, Jun 10, 2010 at 03:42:46PM +0300, Baruch Siach wrote:
> Hi Sascha,
> 
> On Thu, Jun 10, 2010 at 02:12:08PM +0200, Sascha Hauer wrote:
> > On Thu, Jun 10, 2010 at 02:49:39PM +0300, Baruch Siach wrote:
> > > On Thu, Jun 10, 2010 at 01:12:37PM +0200, Sascha Hauer wrote:
> > > > On Wed, Jun 09, 2010 at 10:05:07AM +0300, Baruch Siach wrote:
> > > 
> > > [snip]
> > > 
> > > > > --- a/board/freescale-mx25-3-stack/3stack.c
> > > > > +++ b/board/freescale-mx25-3-stack/3stack.c
> > > > > @@ -44,7 +44,11 @@ extern unsigned long _stext;
> > > > >  
> > > > >  void __naked __flash_header_start go(void)
> > > > >  {
> > > > > +#if defined CONFIG_FREESCALE_MX25_3STACK_UART_BOOT
> > > > > +	__asm__ (".word	exception_vectors\n");
> > > > > +#else
> > > > >  	__asm__ __volatile__("b exception_vectors\n");
> > > > > +#endif
> > > > 
> > > > Do we need this change? I booted other i.MX SoCs without it. I really
> > > > like to keep this because it enables to jump to the first address if
> > > > booting second stage.
> > > 
> > > This is actually a (very) short "flash" header with only the 
> > > app_code_jump_vector entry left. Only reverse engineering the Freescale ATK 
> > > software revealed this secret. Reading through the i.MX25 Reference Manual I 
> > > now see that there is an option to pass DCD separately, but it complicates the 
> > > boot sequence.  This change only affects builds when this configuration 
> > > option, and this option is disabled by default.
> > 
> > What do you use to upload images?
> 
> I use a custom Perl script that parses a .inc file with the same syntax as the 
> those distributed with the Freescale ATK. This script and the .inc file are 
> attached.
> 
> > I once updated my favourite terminal program microcom 
> > (git://git.pengutronix.de/git/tools/microcom) to be
> > able to upload and start images. I didn't need any special images. I
> > just used the ability to write registers to initialize the SDRAM and
> > then uploaded an image to sdram with image type 0xaa which seems to
> > just start the image at the given address.
> 
> What is this "given address"? Is this the same address as the image load 
> address, i.e., the first instruction in the image?
> 
> > Find a log attached (which is on an i.MX27, but I tested it on i.MX35 and 
> > i.MX51 aswell) Maybe this could be a solution for you aswell.
> 
> This could really simplify things. Is this support integrated in the git 
> version of microcom?
> 
> Some more question below.
> 
> > Anyway, that said, I can apply your patch, too. I just find it very
> > comfortable to use one image for all boot scenarios.
> > 
> > Sascha
> > 
> > sha@kiwi:~/octopus/microcom/microcom ./microcom -p /dev/ttyS0 -f
> > connected to /dev/ttyS0
> > Escape character: Ctrl-\
> > Type the escape character followed by c to get to the menu or q to quit
> > 
> > barebox:/
> > Enter command. Try 'help' for a list of builtin commands
> > -> x b
> 
> Do you have Barebox running on the board at this point?
> Is the above 'x b' a special microcom command, or a Barebox script?
> 
> I must say that Barebox is much more fun to work with than RedBoot. A huge 
> improvement.
> 
> Thanks.
> 
> baruch
> 
> > mw 0xD8001010 0x00000004
> > mw 0xD8001004 0x006ac73a
> > mw 0xD8001000 0x92100000
> > mw 0xA0000f00 0x12344321
> > mw 0xD8001000 0xa2100000
> > mw 0xA0000000 0x12344321
> > mw 0xA0000000 0x12344321
> > mw 0xD8001000 0xb2100000
> > mwb 0xA0000033 0xda
> > mwb 0xA1000000 0xff
> > mw 0xD8001000 0x82226080
> > mw 0xA0000000 0xDEADBEEF
> > mw 0xD8001010 0x0000000c
> > upload 0xa0000000 /home/sha/octopus/barebox/barebox/barebox-pcm038.bin 0xaa
> > image type: 0xaa
> > 
> >     ################################################################
> >     ################################################################
> >     ########################################
> > 
> > ----------------------
> > ����
> > 
> > barebox 2010.04.0-00140-g0a28ada-dirty (Apr 15 2010 - 11:40:21)
> > 
> > Board: Phytec phyCORE-i.MX27
> > cfi_probe: cfi_flash base: 0xc0000000 size: 0x02000000
> > NAND device: Manufacturer ID: 0x20, Chip ID: 0x36 (ST Micro NAND 64MiB
> > 1,8V 8-bit)
> > Bad block table found at page 131040, version 0x01
> > Bad block table found at page 131008, version 0x01
> > imxfb@imxfb0: i.MX Framebuffer driver
> > ULPI Vendor ID 0xffffff92    Product ID 0xffffff92
> > No ISP1504 found
> > ehci@ehci0: USB EHCI 1.00
> > cfi_protect: protect 0xc0040000 (size 131072)
> > 
> > Using environment in NOR Flash
> > initialising PLLs: 0xa7f1ea18 0xa7f291f4
> > Malloc space: 0xa6f00000 -> 0xa7f00000 (size 16 MB)
> > Stack space : 0xa6ef8000 -> 0xa6f00000 (size 32 kB)
> > running /env/bin/init...
> > 
> > Hit any key to stop autoboot:  2
> > 
> > type update_kernel nand|nor [<imagename>] to update kernel into flash
> > type update_root nand|nor [<imagename>] to update rootfs into flash
> > 
> > barebox:/

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

--Fba/0zbH8Xs+Fj9o
Content-Type: text/x-perl; charset=us-ascii
Content-Disposition: attachment; filename="imx_uart_boot.pl"

#!/usr/bin/perl

# Copyright 2009, 2010, Orex Computed Radiography
#
# This program file is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation; version 2 of the License, or (at your option) any 
# later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU General Public License. If not, 
# see <http://www.gnu.org/licenses/>.
#
# Author: Baruch Siach <baruch@tkos.co.il>

use strict;
use warnings;
use English;

my @cmd_status = (0x05, 0x05, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0);

my $resp1 = pack ("C4", 0x56, 0x78, 0x78, 0x56);
my $resp2 = pack ("C4", 0x12, 0x8a, 0x8a, 0x12);
my $resp3 = pack ("C4", 0x88, 0x88, 0x88, 0x88);

my $serial_dev;
my $config_file;

my $buf_in;

sub data_size {
    my $bits = shift;

    if ($bits == 8) {
        return 0x08;
    } elsif ($bits == 16) {
        return 0x10;
    } elsif ($bits == 32) {
        return 0x20;
    }

    return;
}

sub hexdump {
    my $buf = shift;

    foreach (unpack ("C*", $buf)) {
        printf "%02x ", $_;
    }
    print "\n";
}

sub usage {
    print "usage: $0 -p serial_port -c config_file\n";
    exit 0;
}

usage unless defined $ARGV[0];

while ($ARGV[0] and $ARGV[0] =~ /-(.*)/) {
    if ($1 eq "p") {
        $serial_dev = $ARGV[1];
        shift @ARGV;
    } elsif ($1 eq "c") {
        $config_file = $ARGV[1];
        shift @ARGV;
    }
    shift @ARGV;
}

usage unless defined $serial_dev;
usage unless defined $config_file;

system ("stty -F $serial_dev 115200 raw min 0 time 5") == 0
    or die "stty failed: $?";
open (my $serial_fh, '+<', $serial_dev) or die "$serial_dev: $!\n";
open (my $config_fh, '<', $config_file) or die "$config_file: $!";

while (<$config_fh>) {
    chomp;
    next if (/^;/);     # discard comments
    next if (/^\s*$/);  # discard empty lines

    if (m#^setmem\s*/(\d*)\s*0x([[:xdigit:]]*)\s*=\s*0x([[:xdigit:]]*)#) {
        my $ds = data_size $1;
        my $addr = sprintf ("%08s", $2);
        my $data = sprintf ("%08s", $3);
        my $write_mem_cmd;

        $write_mem_cmd = pack ("C2", 0x02, 0x02) .
            pack ("H8", $addr) .
            pack ("C", $ds) .
            pack ("C4", 0x0, 0x0, 0x0, 0x0) .
            pack ("H8", $data) .
            pack ("C", 0x0);

        print "line $.: 0x$addr <- 0x$3 ";
        print $serial_fh $write_mem_cmd;
        read $serial_fh, $buf_in, 8;
        if ($buf_in eq $resp1 . $resp2) {
            print "OK\n";
        } elsif ($buf_in eq $resp1) {
            print "FAIL\n";
        } else {
            print "UNKNOWN\n";
            print "   ";
            foreach (unpack ("C*", $buf_in)) {
                printf "%02x ", $_;
            }
            print "\n";
        }

        next;
    }

    if (m#^getmem\s*/(\d*)\s*0x([[:xdigit:]]*)#) {
        my $bits = $1;
        my $ds = data_size $bits;
        my $addr = sprintf ("%08s", $2);
        my $read_mem_cmd;

        $read_mem_cmd = pack ("C2", 0x01, 0x01) .
            pack ("H8", $addr) .
            pack ("C", $ds) .
            pack ("H8", "00000001") .
            pack ("C5", 0x0, 0x0, 0x0, 0x0, 0x0);

        print $serial_fh $read_mem_cmd;
        read $serial_fh, $buf_in, 4 + ($bits/8);
        if (substr ($buf_in, 0, 4) eq $resp1) {
            print "$.: read at 0x$addr: ";
            foreach (unpack ("C*", substr ($buf_in, 4))) {
                printf "%02x ", $_;
            }
            print "\n";
        } else {
            print "line $. UNKNOWN\n";
        }

        next;
    }

    if (m#readfile,raw,gui\s*"(.*)"\s*=\s*0x([[:xdigit:]]*)#) {
        my $addr = sprintf ("%08s", $2);
        my $img_fh;

        print "line $.: start loading $1 at 0x$addr ";

        if (not open ($img_fh, '<', $1)) {
            warn "$1: ", $!;
            next;
        }
        binmode $img_fh;

        my $hex_size = sprintf ("%08x", (stat ($1))[7]);

        my $write_file_cmd = pack ("C2", 0x04, 0x04) .
            pack ("H8", $addr) .
            pack ("C", 0x0) .
            pack ("H8", $hex_size) .
            pack ("C5", 0x0, 0x0, 0x0, 0x0, 0xaa);

        print $serial_fh $write_file_cmd;
        read $serial_fh, $buf_in, 4;
        if ($buf_in eq $resp1) {
            print "OK\n";
        } else {
            print "UNKNOWN\n";
            next;
        }

        $OUTPUT_AUTOFLUSH = 1;
        print "loading... ";
        my $rx;
        while (($rx = read $img_fh, my $bin_buf, 1024)) {
            print $serial_fh $bin_buf;
            print "#";
        }
        $OUTPUT_AUTOFLUSH = 0;
        print "\n";
        if (not defined $rx) {
            warn $!;
            next;
        }
 
        print "line $.: execute ";
        print $serial_fh pack ("C*", @cmd_status); # write something
        read $serial_fh, $buf_in, 4;
        if ($buf_in eq $resp3) {
            print "OK\n";
        } else {
            print "UNKNOWN\n";
            next;
        }

        next;
    }
}

--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="imx_init_barebox.inc"

; WEIM config-CS5 init -- CPLD
setmem /32 0xB8002050 = 0x0000D843
setmem /32 0xB8002054 = 0x22252521
setmem /32 0xB8002058 = 0x22220A00

; DDR2 init
setmem /32 0xB8001004 = 0x0076E83A
setmem /32 0xB8001010 = 0x00000204
setmem /32 0xB8001000 = 0x92210000
setmem /32 0x80000f00 = 0x12344321
setmem /32 0xB8001000 = 0xB2210000
setmem /8  0x82000000 = 0xda
setmem /8  0x83000000 = 0xda
setmem /8  0x81000000 = 0xda
setmem /8  0x80000333 = 0xda

setmem /32 0xB8001000 = 0x92210000
setmem /8  0x80000400 = 0x12345678

setmem /32 0xB8001000 = 0xA2210000
setmem /32 0x80000000 = 0x87654321
setmem /32 0x80000000 = 0x87654321

setmem /32 0xB8001000 = 0xB2210000
setmem /8  0x80000233 = 0xda
setmem /8  0x81000780 = 0xda
setmem /8  0x81000400 = 0xda

setmem /32 0xB8001000 = 0x82216080

setmem /32 0x43FAC454 = 0x00001000

setmem /32 0x80000000 = 0x00000000

;setmem /32 0x53F80008 = 0x20034000

readfile,raw,gui "barebox.bin"=0x83f00000

--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--Fba/0zbH8Xs+Fj9o--
