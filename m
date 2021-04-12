Delivery-date: Mon, 12 Apr 2021 09:19:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqx-0003hA-9i
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:19:23 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqs-00056M-9c
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:19:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VkNGMcqJKrNCecbz45i/Oi62+vnLJQnsymR1fHlMdLE=; b=QdoJ8cbhMDXi07oQVVQp/oC9t
	+eRhCWljFcBBVP5P8PjA8JKX4McMv24hEcFsjt/s8Xbh7O6FBQ41LsO21WFx27JYKl0N+7qr+upSP
	MSsDv2JWnPq3voun6zxXRxEMNStunV+N9XS4JT0E5DMCSO/ICZD7qgna1OrVcPYtMWosvc9Yz4Uv0
	IQPEBcn8w6SVF+/REdcbLSdSslVraWIPJiX+l4o4nKdGtHXvVulBmwhFGOpeeC0sKXORWQiIzJJbW
	YF/X/qpoAftJQIweiOWPKo+sjW0QQ2OQRNoSKqmOV7A0YgS0ynAfBiauOVBq6l9dHUFH9RujpIls1
	ajEpN0Kvg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqpS-005w7X-Lx; Mon, 12 Apr 2021 07:17:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoo-005vvg-Hh
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=jav0qGIq93tfqTb3lCzFMTeEMXeHkAwDzjtXD71DwDo=; b=gq8bvaFa2WQjVBTrgMGFS1B9wv
 TDmenBLgsMFzrPwmYHcyuzeupOUaZ5m1bX9CJ+qBMBKizV+zmrpeB3Ig4FaUom8OaNc//+eSP4QDB
 xU/Hwm/Ikpp/heoP57A3lDwhoSHu+3NsFR9wDSDWjLzp0RzhlWAqKC2kOj0ZcVEmCDUvmpiIJ2tKX
 daVL6t6ZNVAiZuMXQxxAdG3KjNzsb3l3hEGUPErAzc4I2VzAfhvC4DCV9e/obJVJAhGRpr+zceeko
 PZ4OAO6gLTCkSM101AS3n1RURUeiSYumB9VHDuEXqoeAt7472rCFjs2WV/GbGykUYsRU62Txz04jW
 wXCq0VsQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoj-005vHB-PU
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HQ-F6; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fz-D3; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:48 +0200
Message-Id: <20210412071651.8769-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001706_177632_9B3461D6 
X-CRM114-Status: GOOD (  29.20  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 14/17] test: add emulate.pl,
 a runner for barebox on emulated targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This script is a wrapper around tuxmake, qemu-system-* and labgrid-pytest.

It parses the same YAML files, labgrid-pytest uses and instructs
tuxmake to build and collect the needed images.

By default, it will start an interactive emulator session, but with
--test, it can also run labgrid-pytest instead.

The script has some knowledge of QEMU options to make common tasks like
passing images straight-forward.

Script is written with both manual use and CI in mind.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/emulated.rst |  70 +++++
 Makefile                          |   1 +
 test/emulate.pl                   | 483 ++++++++++++++++++++++++++++++
 test/kconfig/base.cfg             |   0
 test/kconfig/full.cfg             |   0
 5 files changed, 554 insertions(+)
 create mode 100644 Documentation/boards/emulated.rst
 create mode 100755 test/emulate.pl
 create mode 100644 test/kconfig/base.cfg
 create mode 100644 test/kconfig/full.cfg

diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emulated.rst
new file mode 100644
index 000000000000..0f6c7dcbbc7b
--- /dev/null
+++ b/Documentation/boards/emulated.rst
@@ -0,0 +1,70 @@
+Emulated targets
+================
+
+Some targets barebox runs on are virtualized by emulators like QEMU, which
+allows basic testing of barebox functionality without the actual hardware.
+
+Generic DT image
+----------------
+
+Supported for ARM and RISC-V. It generates a barebox image that can
+be booted with the Linux kernel booting convention, which makes
+it suitable to be passed as argument to the QEMU ``-kernel`` option.
+The device tree is either the QEMU internal device tree or a device
+tree supplied by QEMU's ``-dtb`` option. The former can be very useful
+with :ref:`virtio_sect`, because QEMU will fix up the virtio mmio
+regions into the device tree and barebox will discover the devices
+automatically, analogously to what it does with VirtIO over PCI.
+
+test/emulate.pl
+---------------
+
+The ``emulate.pl`` script shipped with barebox can be used to easily
+start VMs. It reads a number of YAML files in ``test/``, which describe
+some virtualized targets that barebox is known to run on.
+Controlled by command line options, these targets are built with
+tuxmake if available and loaded into the emulator for either interactive
+use or for automated testing with Labgrid ``QEMUDriver``.
+
+.. _tuxmake: https://pypi.org/project/tuxmake/
+.. _Labgrid: https://labgrid.org
+
+Install dependencies for interactive use::
+
+  cpan YAML::Tiny # or use e.g. libyaml-tiny-perl on debian
+  pip3 install tuxmake # optional
+
+Example usage::
+
+  # Switch to barebox source directory
+  cd barebox
+
+  # emulate ARM virt with an image built by vexpress_defconfig
+  ARCH=arm ./test/emulate.pl virt@vexpress_defconfig
+
+  # build all MIPS targets known to emulate.pl and exit
+  ARCH=mips ./test/emulate.pl --no-emulate
+
+The script can also be used from a finished barebox build directory::
+
+  # Switch to build directory
+  cd build
+
+  # run a barebox image built outside tuxmake with an emulated vexpress-ca15
+  ARCH=x86 ./test/emulate.pl efi_defconfig --no-tuxmake
+
+  # run tests instead of starting emulator interactively
+  ARCH=x86 ./test/emulate.pl efi_defconfig --no-tuxmake --test
+
+``emulate.pl`` also has some knowledge on paravirtualized devices::
+
+  # Run target and pass a block device (here /dev/virtioblk0)
+  ARCH=riscv ./test/emulate.pl --blk=rootfs.ext4 virt64_defconfig
+
+``emulate.pl`` if needed command line options can be passed directly
+to the emulator/``labgrid-pytest`` as well by placing them behind ``--``::
+
+  # appends -device ? to the command line. Add -n to see the final result
+  ARCH=riscv ./test/emulate.pl virt64_defconfig -- -device ?
+
+For a complete listing of options run ``./test/emulate.pl -h``.
diff --git a/Makefile b/Makefile
index 7db7cb7b4a3a..d65986f8693f 100644
--- a/Makefile
+++ b/Makefile
@@ -1283,6 +1283,7 @@ ifdef building_out_of_srctree
 	@ln -fsn $(abspath $(srctree)/test/py) $(objtree)/test/
 	@ln -fsn $(abspath $(srctree)/test/conftest.py) $(objtree)/test/
 	@ln -fsn $(abspath $(srctree)/test/__init__.py) $(objtree)/test/
+	@ln -fsn $(abspath $(srctree)/test/emulate.pl) $(objtree)/test/
 endif
 
 all: symlink_tests
diff --git a/test/emulate.pl b/test/emulate.pl
new file mode 100755
index 000000000000..cf1d2c57c590
--- /dev/null
+++ b/test/emulate.pl
@@ -0,0 +1,483 @@
+#!/usr/bin/env perl
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (c) 2021 Ahmad Fatoum
+
+use strict;
+use warnings;
+
+use Cwd;
+use File::Basename;
+use File::Spec;
+use File::Temp 'tempdir';
+use Getopt::Long;
+use List::Util 'first';
+use Pod::Usage;
+use YAML::Tiny;
+
+my @QEMU_INTERACTIVE_OPTS = qw(-serial mon:stdio -trace file=/dev/null);
+
+my %targets;
+
+for my $arch (glob dirname(__FILE__) . "/*/") {
+    for my $cfg (glob "$arch/*.yaml") {
+	my $linkdest = readlink $cfg // '';
+
+	my $yaml = YAML::Tiny->read($cfg);
+
+	defined $yaml && exists $yaml->[0]{targets} && exists $yaml->[0]{targets}{main}
+	    or die "Invalid structure for $cfg\n";
+
+	my $path = File::Spec->abs2rel($cfg, getcwd);
+	$cfg = basename($cfg);
+	$cfg =~ s/\.yaml$//;
+	$linkdest =~ s{^.*?([^/]+)\.yaml$}{$1};
+
+	$targets{basename $arch}{$cfg} = $yaml->[0]{targets}{main};
+	$targets{basename $arch}{$cfg}{path} = $path;
+	$targets{basename $arch}{$cfg}{tools} = $yaml->[0]{tools};
+	$targets{basename $arch}{$cfg}{images} = $yaml->[0]{images};
+	$targets{basename $arch}{$cfg}{alias} = $linkdest if $linkdest && $linkdest ne $cfg;
+    }
+}
+
+my %arch_aliases = (arm64 => 'arm', x86_64 => 'x86', i386 => 'x86', um => 'sandbox');
+
+my ($dryrun, $help, @blks, $rng, $list, $shell, $runtime, @kconfig_add, $artifacts);
+my ($tuxmake, $emulate, $clean, $extraconsoles, $test) = (1, 1, 1, 0, 0);
+my ($kconfig_base, $kconfig_full) = (1, 0);
+
+my @OPTS;
+
+if (defined (my $idx = first { $ARGV[$_] eq '--' } 0 .. @ARGV - 1)) {
+    @OPTS = splice @ARGV, 1 + $idx;
+}
+
+GetOptions(
+	'help|?|h' => \$help,
+	'dryrun|n' => \$dryrun,
+	'list|l' => \$list,
+	'tuxmake!' => \$tuxmake,
+	'artifacts=s' => \$artifacts,
+	'runtime=s' => \$runtime,
+	'blk=s@' => \@blks,
+	'console+' => \$extraconsoles,
+	'rng' => \$rng,
+	'emulate!' => \$emulate,
+	'clean!' => \$clean,
+	'shell' => \$shell,
+	'kconfig-base!' => \$kconfig_base,
+	'kconfig-full!' => \$kconfig_full,
+	'kconfig-add|K=s@' => \@kconfig_add,
+	'test' => \$test,
+) or pod2usage(2);
+pod2usage(1) if $help;
+
+my @ARCH = split /\s/, $ENV{ARCH} // '';
+@ARCH = @ARCH ? @ARCH : keys %targets;
+
+my $success = 0;
+
+for my $arch (@ARCH) {
+	my @targets = @ARGV ? @ARGV : keys %{$targets{$arch}};
+	@targets != 1 && !$tuxmake
+		and die "can't use --no-tuxmake with more than one config\n";
+
+	unless (defined $targets{$arch}) {
+		die "Unknown ARCH=$arch. Supported values:\n",
+		join(', ', keys %targets), "\n";
+	}
+
+	for my $config (@targets) {
+	        $arch = $arch_aliases{$arch} // $arch;
+
+		unless (defined $targets{$arch}{$config}) {
+		    next;
+		}
+
+		if ($list) {
+		    print "ARCH=$arch $config\n";
+		    $success += 1;
+		    next;
+		}
+
+		if (defined $targets{$arch}{$config}{alias}) {
+		    next if grep { /^$targets{$arch}{$config}{alias}$/ } @targets;
+		    $config = $targets{$arch}{$config}{alias};
+		    redo;
+		}
+
+		print "# $config\n" if $dryrun;
+		$success += process($arch, $config);
+	}
+}
+
+$success > 0
+	or die "No suitable config found. $0 -l to list all built-in.\n";
+
+sub process {
+	my ($ARCH, $defconfig, %keys) = @_;
+	my $target = $targets{$ARCH}{$defconfig};
+
+	if (!exists ($target->{runner}{tuxmake_arch})) {
+	    $target->{runner}{tuxmake_arch} = $ARCH;
+	}
+
+	my $dir;
+
+	$dir = tempdir("bareboxbuild-XXXXXXXXXX", TMPDIR => 1, CLEANUP => $clean);
+	report('mkdir', $dir);
+
+	my %opts = (
+	    target => $target, builddir => $tuxmake ? $dir : getcwd,
+	    defconfig => $defconfig,
+	    extra_opts => [map { s/\{config\}/$defconfig/gr  } @OPTS],
+	);
+
+	build(%opts) if $tuxmake;
+
+	while (my ($k, $v) = each %{$target->{runner}{download}}) {
+	    if ($v =~ m{^[/.]}) {
+		symlink_force($v, "$dir/$k");
+	    } else {
+		vsystem('curl', '-L', '--create-dirs', '-o', "$dir/$k", $v) == 0
+		    or die "Failed to download resource `$v': $?\n";
+	    }
+
+	    symlink_force("$dir/$k", "$k") unless $tuxmake;
+	}
+
+	if ($shell) {
+		pushd($dir);
+		system($ENV{SHELL} // "/bin/sh");
+		popd();
+	}
+
+	return 1 unless $emulate;
+
+	pushd($dir) if $tuxmake;
+
+	my $success = $test ? test(%opts) : emulate(%opts);
+
+	if ($tuxmake) {
+	    popd();
+
+	    report("rm", "-rd", $dir) if $clean;
+	}
+	print "\n\n" if $dryrun;
+	return $success;
+}
+
+sub build {
+    my %args = @_;
+    my ($runner, $dir) = ($args{target}{runner}, $args{builddir});
+
+    $args{defconfig} =~ s/[^@]+@//g;
+
+    my @TUXMAKE_ARGS = ('-a', $runner->{tuxmake_arch}, '-k', $args{defconfig});
+
+    if (defined $runner->{kconfig_add}) {
+	for my $cfg (@{$runner->{kconfig_add}}) {
+	    push @TUXMAKE_ARGS, "--kconfig-add=$cfg"
+	}
+    }
+
+    push @TUXMAKE_ARGS, "--kconfig-add=test/kconfig/base.cfg" if $kconfig_base || $kconfig_full;
+    push @TUXMAKE_ARGS, "--kconfig-add=test/kconfig/full.cfg" if $kconfig_full;
+
+    for (@kconfig_add) {
+	push @TUXMAKE_ARGS, "--kconfig-add=$_";
+    }
+
+    push @TUXMAKE_ARGS, "--runtime=$runtime" if $runtime;
+
+    vsystem('tuxmake', @TUXMAKE_ARGS, '-b', $dir, '-o',
+	$artifacts // "$dir/artifacts", 'default') == 0
+	or die "Error building: $?\n";
+}
+
+sub emulate {
+    my %args = @_;
+    my %target = %{$args{target}};
+    my @OPTS = @{$args{extra_opts}};
+
+    if (defined $target{drivers}{QEMUDriver}) {
+	    my %qemu = %{$target{drivers}{QEMUDriver}};
+	    my ($kernel, $bios, $dtb);
+	    my $qemu_virtio;
+	    my $i;
+
+	    $kernel = abs_configpath($qemu{kernel}, $args{target});
+	    $bios   = abs_configpath($qemu{bios},   $args{target});
+	    $dtb    = abs_configpath($qemu{dtb},    $args{target});
+
+	    my @cmdline = ($target{tools}{$qemu{qemu_bin}},
+		'-M', $qemu{machine}, '-cpu', $qemu{cpu}, '-m', $qemu{memory});
+
+	    push @cmdline, '-kernel', $kernel if defined $kernel;
+	    push @cmdline, '-bios', $bios if defined $bios;
+	    push @cmdline, '-dtb',  $dtb if defined $dtb;
+
+	    push @cmdline, @QEMU_INTERACTIVE_OPTS;
+	    for (split /\s/, $qemu{extra_args}) {
+		push @cmdline, $_;
+	    }
+
+	    if (has_feature(\%target, 'virtio-pci')) {
+		    $qemu_virtio = 'pci,disable-legacy=on,disable-modern=off';
+		    push @{$target{features}}, 'pci';
+		    push @{$target{features}}, 'virtio';
+	    } elsif (has_feature(\%target, 'virtio-mmio')) {
+		    $qemu_virtio = 'device';
+		    push @{$target{features}}, 'virtio';
+	    }
+
+	    $i = 0;
+	    for my $blk (@blks) {
+		if (has_feature(\%target, 'virtio')) {
+		    $blk = rel2abs($blk, getcwd);
+		    push @cmdline,
+		    '-drive', "if=none,file=$blk,format=raw,id=hd$i",
+		    '-device', "virtio-blk-$qemu_virtio,drive=hd$i";
+		} else {
+		    die "--blk unsupported for target\n";
+		}
+	    }
+
+	    # note that barebox doesn't yet support multiple virtio consoles
+	    if ($extraconsoles) {
+		$i = 0;
+
+		if (defined $qemu_virtio) {
+		    push @cmdline,
+		    '-device', "virtio-serial-$qemu_virtio",
+		    '-chardev', "pty,id=virtcon$i",
+		    '-device', "virtconsole,chardev=virtcon$i,name=console.virtcon$i";
+
+		    $i++;
+		}
+
+		if ($i < $extraconsoles) {
+		    # ns16550 serial driver only works with x86 so far
+		    if (has_feature(\%target, 'pci')) {
+			for (; $i < $extraconsoles; $i++) {
+			    push @cmdline,
+			    '-chardev', "pty,id=pcicon$i",
+			    '-device', "pci-serial,chardev=pcicon$i";
+			}
+		    } else {
+			warn "barebox currently supports only a single extra virtio console\n";
+		    }
+		}
+	    }
+
+	    if (defined $rng) {
+		if (has_feature(\%target, 'virtio')) {
+		    push @cmdline, '-device', "virtio-rng-$qemu_virtio";
+		} else {
+		    die "--rng unsupported for target\n";
+		}
+	    }
+
+	    vsystem(@cmdline, @OPTS) == 0 or die "Error running emulator: $?\n";
+
+    } elsif (defined $target{drivers}{TinyEMUDriver}) {
+	    my %temu = %{$target{drivers}{TinyEMUDriver}};
+	    my $TEMU_CFG;
+	    my $i = 0;
+
+	    if (exists $temu{config}) {
+		$temu{config} = rel2abs($temu{config}, getcwd . "/source/");
+		open(my $fh, '<', "$temu{config}")
+		    or die "Could not open file '$temu{config}': $!";
+		$TEMU_CFG = do { local $/; <$fh> };
+	    }
+
+	    print ("$temu{config}\n");
+
+	    defined $TEMU_CFG or die "Unknown tinyemu-config\n";
+
+	    open(my $fh, '>', "tinyemu.cfg")
+		or die "Could not create file 'tinyemu.cfg': $!";
+	    print $fh $TEMU_CFG;
+	    print "cat >'tinyemu.cfg' <<EOF\n$TEMU_CFG\nEOF\n" if $dryrun;
+
+	    for my $blk (@blks) {
+		$blk = rel2abs($blk, getcwd);
+		$TEMU_CFG =~ s[\}(?!.*\})][drive$i: { file: "$blk" },\n}]ms
+	    }
+
+	    die "--console unsupported for target\n" if $extraconsoles;
+	    die "--rng unsupported for target\n" if defined $rng;
+
+	    vsystem($temu{temu_bin}, "tinyemu.cfg", @OPTS) == 0
+		or die "Error running emulator: $?\n";
+    } elsif (defined $target{drivers}{NativeExecutableDriver}) {
+	    my %exec = %{$target{drivers}{NativeExecutableDriver}};
+	    vsystem($exec{command}, @OPTS) == 0 or die "Error running emulator: $?\n";
+    }
+
+    return 1;
+}
+
+sub test {
+    my %args = @_;
+    my @OPTS = @{$args{extra_opts}};
+
+    unless (defined $args{target}{drivers}{QEMUDriver}) {
+	warn "$args{target}{path}: Skippig test, no QEMUDriver\n";
+	return 0;
+    }
+
+    vsystem('labgrid-pytest', '--lg-env', "$args{target}{path}", "test/py",
+	'--lg-log', @OPTS) == 0 or die "Error running 'labgrid-pytest': $?\n";
+
+    return 1;
+}
+
+sub has_feature {
+    defined first { lc($_) eq $_[1] } @{$_[0]->{features}}
+}
+
+sub report {
+    print join(' ', map { /\s/ ? "'$_'" : $_  } @_), "\n" if $dryrun;
+    0;
+}
+
+sub vsystem {
+    if ($dryrun) {
+	return report(@_);
+    } else {
+	my $ret = system @_;
+	warn "vsystem: $!\n" if $ret == -1;
+	return $ret >> 8;
+    }
+}
+
+sub rel2abs {
+    File::Spec->rel2abs(@_)
+}
+
+sub abs_configpath {
+    my ($path, $target) = @_;
+
+    return unless defined $path;
+    $path = $target->{images}{$path};
+    return unless defined $path;
+
+    return File::Spec->rel2abs($path, dirname $target->{path});
+}
+
+sub symlink_force {
+    unlink($_[1]);
+    symlink($_[0], $_[1]);
+}
+
+my @oldcwd;
+
+sub pushd {
+	my ($old, $new) = (getcwd, shift);
+	report ("pushd", $new);
+	push @oldcwd, $old;
+	chdir $new;
+	return $old;
+};
+
+sub popd {
+	report("popd");
+	chdir pop(@oldcwd)
+};
+
+__END__
+
+=head1 NAME
+
+emulate.pl - Build and run barebox under an emulator
+
+=head1 SYNOPSIS
+
+[ARCH=arch] emulate.pl [options] [defconfigs...] [--] [qemu/pytest-opts]
+
+=head1 OPTIONS
+
+Must be run from either barebox source or build directory.
+
+=over 8
+
+=item B<-?>, B<-h>, B<--help>
+
+Print a help message and exits
+
+=item B<-n>, B<--dryrun>
+
+Print commands and exit
+
+=item B<-l>, B<--list>
+
+Filter input with list of known targets
+
+=item B<--no-tuxmake>
+
+Don't rerun tuxkmake. Assumes current working directory is finished build directory
+
+=item B<--artifacts>=%s
+
+Destination directory for the tuxmake artifacts. By default, this is
+the artifacts/ subdirectory in the temporary build directory and is
+not persisted (unless --no-clean is specified).
+
+=item B<--blk>=%s
+
+Pass block device to emulated barebox. Can be specified more than once
+
+=item B<--console>
+
+Pass one Virt I/O console to emulated barebox.
+
+=item B<--rng>
+
+instantiate Virt I/O random number generator
+
+=item B<--no-emulate>
+
+Don't emulate anything and exit directly after build
+
+=item B<--no-clean>
+
+Don't delete temporary working directory after
+
+=item B<--shell>
+
+Open shell in temporary working directory, after build, but before emulation
+
+=item B<--test>
+
+Instead of starting emulator interactively, run it under labgrid-pytest with
+the in-tree python tests.
+
+=item B<--runtime>=%s
+
+Runtime to use for the tuxmake builds. By default, builds are
+run natively on the build host.
+Supported: null, podman-local, podman, docker, docker-local.
+
+=item B<--no-kconfig-base>
+
+Don't apply test/kconfig/base.cfg. This may lead to more tests being
+skipped.
+
+=item B<--kconfig-full>
+
+Applies test/kconfig/full.cfg on top of base.cfg. This enables as much as
+possible to avoid skipping tests for disabled functionality.
+
+=item B<--kconfig_add>=%s, B<-K>=%s
+
+Extra kconfig fragments, merged on top of the defconfig and Kconfig
+fragments described by the YAML. In tree configuration fragment
+(e.g. `test/kconfig/virtio-pci.config`), path to local file, URL,
+`CONFIG_*=[y|m|n]`, or `# CONFIG_* is not set` are supported.
+Can be specified multiple times, and will be merged in the order given.
+
+=back
+
+=cut
diff --git a/test/kconfig/base.cfg b/test/kconfig/base.cfg
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/test/kconfig/full.cfg b/test/kconfig/full.cfg
new file mode 100644
index 000000000000..e69de29bb2d1
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

