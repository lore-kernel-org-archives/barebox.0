Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMkJx-00061R-AS
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 16:09:35 +0000
Date: Thu, 10 Jun 2010 19:09:21 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100610160920.GJ31840@jasper.tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
	<f9f84cc251848d133fae379e6d20253df2121ffb.1276065824.git.baruch@tkos.co.il>
	<20100610111237.GH20799@pengutronix.de>
	<20100610114939.GF31840@jasper.tkos.co.il>
	<20100610121208.GO20799@pengutronix.de>
	<20100610124246.GG31840@jasper.tkos.co.il>
	<20100610135644.GR20799@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="96YOpH+ONegL0A3E"
Content-Disposition: inline
In-Reply-To: <20100610135644.GR20799@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--96YOpH+ONegL0A3E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sascha,

On Thu, Jun 10, 2010 at 03:56:44PM +0200, Sascha Hauer wrote:
> On Thu, Jun 10, 2010 at 03:42:46PM +0300, Baruch Siach wrote:
> > On Thu, Jun 10, 2010 at 02:12:08PM +0200, Sascha Hauer wrote:
> > > -> x b
> 
> This is to execute a (microcom) script. It just executes the 'mw'
> instructions below. (In microcom, they are just named after the barebox
> pendants)

OK. You're right. Generating the header at run time makes much more sense. I 
updated my Perl script and .inc file (changed the load address), and I'm now 
able to boot over UART without this patch.

Thank you very much.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

--96YOpH+ONegL0A3E
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
        my $entry = hex ($2) + 0x20;
        my $img_fh;

        print "line $.: start loading $1 at 0x$addr ";

        if (not open ($img_fh, '<', $1)) {
            warn "$1: ", $!;
            next;
        }
        binmode $img_fh;

        # get image file size + 0x20 header bytes
        my $hex_size = sprintf ("%08x", (stat ($1))[7] + 0x20);

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

        my $write_file_header = pack ("V", $entry) . pack ("x28");
        print $serial_fh $write_file_header;

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

--96YOpH+ONegL0A3E
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

readfile,raw,gui "barebox.bin"=0x83000000

--96YOpH+ONegL0A3E
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--96YOpH+ONegL0A3E--
