Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fv8mg-0004wC-KJ
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 22:17:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1fv8mP-0008Vl-Jf
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 00:17:37 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mgr@pengutronix.de>) id 1fv8mL-00042x-PC
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 00:17:33 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 30 Aug 2018 00:17:27 +0200
Message-Id: <20180829221727.15273-1-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3] lxc: add new package
To: barebox@lists.infradead.org

This patch adds support for the lxc container system. We install the
userspace lib and application.

To make sure all necessary kernel options are enabled use:
$ CONFIG=/path/to/kernelconfig lxc-checkconfig

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: - prefixed used variables with PTXCONF_ :
            LXC_TEMPLATES, LXC_HOOKS, LXC_SELINUX
          - fixed used variable LXC_SYSTEMD_UNIT
          - added missing dir /usr/lib/lxc/rootfs
          - added dependency to busybox tools when using templates
          - added dependency to iptables when starting systemd.service
          - removed some extra commented unused options
          - removed hooks
          - only installing busybox template
          - added dependency to busybox_umount

v2 -> v3: - removed the busybox template
          - added patch for dnsmasq to start without dns support
          - added install stage to include getent from toolchain
	  - dropped the host-lxc and busybox patch for now

 ...te-new-lxcbr0-subnet-at-startup-time.patch | 134 +++++++++++
 ...-net-start-dnsmasq-without-dnsserver.patch |  24 ++
 patches/lxc-3.0.1/series                      |   2 +
 projectroot/etc/default/lxc-net               |   7 +
 projectroot/etc/lxc/default.conf              |   4 +
 rules/lxc.in                                  |  61 +++++
 rules/lxc.make                                | 210 ++++++++++++++++++
 7 files changed, 442 insertions(+)
 create mode 100644 patches/lxc-3.0.1/0001-Allocate-new-lxcbr0-subnet-at-startup-time.patch
 create mode 100644 patches/lxc-3.0.1/0002-lxc-net-start-dnsmasq-without-dnsserver.patch
 create mode 100644 patches/lxc-3.0.1/series
 create mode 100644 projectroot/etc/default/lxc-net
 create mode 100644 projectroot/etc/lxc/default.conf
 create mode 100644 rules/lxc.in
 create mode 100644 rules/lxc.make

diff --git a/patches/lxc-3.0.1/0001-Allocate-new-lxcbr0-subnet-at-startup-time.patch b/patches/lxc-3.0.1/0001-Allocate-new-lxcbr0-subnet-at-startup-time.patch
new file mode 100644
index 000000000..a1fddbea4
--- /dev/null
+++ b/patches/lxc-3.0.1/0001-Allocate-new-lxcbr0-subnet-at-startup-time.patch
@@ -0,0 +1,134 @@
+From: =?UTF-8?q?St=C3=A9phane=20Graber?= <stgraber@ubuntu.com>
+Date: Tue, 3 Nov 2015 11:42:58 -0500
+Subject: [PATCH] Allocate new lxcbr0 subnet at startup time
+
+---
+ config/init/common/lxc-net.in | 100 ++++++++++++++++++++++++++++++++++++++----
+ 1 file changed, 91 insertions(+), 9 deletions(-)
+
+diff --git a/config/init/common/lxc-net.in b/config/init/common/lxc-net.in
+index df9f1181d761..6837be1969c2 100644
+--- a/config/init/common/lxc-net.in
++++ b/config/init/common/lxc-net.in
+@@ -24,6 +24,85 @@ LXC_IPV6_MASK=""
+ LXC_IPV6_NETWORK=""
+ LXC_IPV6_NAT="false"
+ 
++write_lxc_net()
++{
++    local i=$1
++    cat >>  $distrosysconfdir/lxc-net << EOF
++# Leave USE_LXC_BRIDGE as "true" if you want to use lxcbr0 for your
++# containers.  Set to "false" if you'll use virbr0 or another existing
++# bridge, or mavlan to your host's NIC.
++USE_LXC_BRIDGE="true"
++
++# If you change the LXC_BRIDGE to something other than lxcbr0, then
++# you will also need to update your /etc/lxc/default.conf as well as the
++# configuration (/var/lib/lxc/<container>/config) for any containers
++# already created using the default config to reflect the new bridge
++# name.
++# If you have the dnsmasq daemon installed, you'll also have to update
++# /etc/dnsmasq.d/lxc and restart the system wide dnsmasq daemon.
++LXC_BRIDGE="lxcbr0"
++LXC_ADDR="10.0.$i.1"
++LXC_NETMASK="255.255.255.0"
++LXC_NETWORK="10.0.$i.0/24"
++LXC_DHCP_RANGE="10.0.$i.2,10.0.$i.254"
++LXC_DHCP_MAX="253"
++# Uncomment the next line if you'd like to use a conf-file for the lxcbr0
++# dnsmasq.  For instance, you can use 'dhcp-host=mail1,10.0.3.100' to have
++# container 'mail1' always get ip address 10.0.3.100.
++#LXC_DHCP_CONFILE=/etc/lxc/dnsmasq.conf
++
++# Uncomment the next line if you want lxcbr0's dnsmasq to resolve the .lxc
++# domain.  You can then add "server=/lxc/10.0.$i.1' (or your actual \$LXC_ADDR)
++# to your system dnsmasq configuration file (normally /etc/dnsmasq.conf,
++# or /etc/NetworkManager/dnsmasq.d/lxc.conf on systems that use NetworkManager).
++# Once these changes are made, restart the lxc-net and network-manager services.
++# 'container1.lxc' will then resolve on your host.
++#LXC_DOMAIN="lxc"
++EOF
++}
++
++configure_lxcbr0()
++{
++    local i=3
++    cat >  $distrosysconfdir/lxc-net << EOF
++# This file is auto-generated by lxc.postinst if it does not
++# exist.  Customizations will not be overridden.
++EOF
++    # if lxcbr0 exists, keep using the same network
++    if  ip addr show lxcbr0 > /dev/null 2>&1 ; then
++        i=`ip addr show lxcbr0 | grep "inet\>" | awk '{ print $2 }' | awk -F. '{ print $3 }'`
++        write_lxc_net $i
++        return
++    fi
++    # if no lxcbr0, find an open 10.0.a.0 network
++    for l in `ip addr show | grep "inet\>" |awk '{ print $2 }' | grep '^10\.0\.' | sort -n`; do
++            j=`echo $l | awk -F. '{ print $3 }'`
++            if [ $j -gt $i ]; then
++                write_lxc_net $i
++                return
++            fi
++            i=$((j+1))
++    done
++    if [ $i -ne 254 ]; then
++        write_lxc_net $i
++    fi
++}
++
++update_lxcnet_config()
++{
++    local i=3
++    # if lxcbr0 exists, keep using the same network
++    if  ip addr show lxcbr0 > /dev/null 2>&1 ; then
++        return
++    fi
++    # our LXC_NET conflicts with an existing interface.  Probably first
++    # run after system install with package pre-install.  Find a new subnet
++    configure_lxcbr0
++
++    # and re-load the newly created config
++    [ ! -f $distrosysconfdir/lxc-net ] || . $distrosysconfdir/lxc-net
++}
++
+ [ ! -f $distrosysconfdir/lxc ] || . $distrosysconfdir/lxc
+ 
+ use_iptables_lock="-w"
+@@ -51,7 +130,19 @@ _ifup() {
+     ip link set dev ${LXC_BRIDGE} up
+ }
+ 
++cleanup() {
++    set +e
++    if [ "$FAILED" = "1" ]; then
++        echo "Failed to setup lxc-net." >&2
++        stop force
++        exit 1
++    fi
++}
++
+ start() {
++
++    [ ! -f $distrosysconfdir/lxc-net ] && update_lxcnet_config
++
+     [ "x$USE_LXC_BRIDGE" = "xtrue" ] || { exit 0; }
+ 
+     [ ! -f "${varrun}/network_up" ] || { echo "lxc-net is already running"; exit 1; }
+@@ -62,15 +153,6 @@ start() {
+ 
+     FAILED=1
+ 
+-    cleanup() {
+-        set +e
+-        if [ "$FAILED" = "1" ]; then
+-            echo "Failed to setup lxc-net." >&2
+-            stop force
+-            exit 1
+-        fi
+-    }
+-
+     trap cleanup EXIT HUP INT TERM
+     set -e
+ 
diff --git a/patches/lxc-3.0.1/0002-lxc-net-start-dnsmasq-without-dnsserver.patch b/patches/lxc-3.0.1/0002-lxc-net-start-dnsmasq-without-dnsserver.patch
new file mode 100644
index 000000000..a8cbf3fe2
--- /dev/null
+++ b/patches/lxc-3.0.1/0002-lxc-net-start-dnsmasq-without-dnsserver.patch
@@ -0,0 +1,24 @@
+From: Michael Grzeschik <m.grzeschik@pengutronix.de>
+Date: Wed, 29 Aug 2018 16:50:50 +0200
+Subject: [PATCH] lxc-net: start dnsmasq without dnsserver
+
+So it does not conflict with the systems dnsmasq systemd-service.
+
+Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
+---
+ config/init/common/lxc-net.in | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/config/init/common/lxc-net.in b/config/init/common/lxc-net.in
+index 6837be1969c2..84128d59486b 100644
+--- a/config/init/common/lxc-net.in
++++ b/config/init/common/lxc-net.in
+@@ -221,7 +221,7 @@ start() {
+             --dhcp-lease-max=${LXC_DHCP_MAX} --dhcp-no-override \
+             --except-interface=lo --interface=${LXC_BRIDGE} \
+             --dhcp-leasefile="${varlib}"/misc/dnsmasq.${LXC_BRIDGE}.leases \
+-            --dhcp-authoritative $LXC_IPV6_ARG || cleanup
++            --dhcp-authoritative $LXC_IPV6_ARG --port=0 || cleanup
+ 
+     touch "${varrun}"/network_up
+     FAILED=0
diff --git a/patches/lxc-3.0.1/series b/patches/lxc-3.0.1/series
new file mode 100644
index 000000000..eec508771
--- /dev/null
+++ b/patches/lxc-3.0.1/series
@@ -0,0 +1,2 @@
+0001-Allocate-new-lxcbr0-subnet-at-startup-time.patch
+0002-lxc-net-start-dnsmasq-without-dnsserver.patch
diff --git a/projectroot/etc/default/lxc-net b/projectroot/etc/default/lxc-net
new file mode 100644
index 000000000..054a09a0a
--- /dev/null
+++ b/projectroot/etc/default/lxc-net
@@ -0,0 +1,7 @@
+USE_LXC_BRIDGE="true"
+LXC_BRIDGE="lxcbr0"
+LXC_ADDR="192.168.1.1"
+LXC_NETMASK="255.255.255.0"
+LXC_NETWORK="192.168.1.0/24"
+LXC_DHCP_RANGE="192.168.1.2,192.168.1.254"
+LXC_DHCP_MAX="253"
diff --git a/projectroot/etc/lxc/default.conf b/projectroot/etc/lxc/default.conf
new file mode 100644
index 000000000..e7af1e6ae
--- /dev/null
+++ b/projectroot/etc/lxc/default.conf
@@ -0,0 +1,4 @@
+lxc.net.0.type = veth
+lxc.net.0.link = lxcbr0
+lxc.net.0.flags = up
+lxc.net.0.hwaddr = 00:16:3e:11:22:34
diff --git a/rules/lxc.in b/rules/lxc.in
new file mode 100644
index 000000000..fde637b0d
--- /dev/null
+++ b/rules/lxc.in
@@ -0,0 +1,61 @@
+## SECTION=system_libraries
+
+menuconfig LXC
+	bool
+	prompt "lxc                           "
+	select GNUTLS			if LXC_GNUTLS
+	select LIBSELINUX		if LXC_SELINUX
+	select LIBSECCOMP		if LXC_SECCOMP
+	select BUSYBOX_FEATURE_SH_MATH	if LXC_SYSTEMD_UNIT
+	select SYSTEMD			if LXC_SYSTEMD_UNIT
+	select DNSMASQ			if LXC_SYSTEMD_UNIT
+	select IPTABLES			if LXC_SYSTEMD_UNIT
+	select IPTABLES_IPV4		if LXC_SYSTEMD_UNIT
+	select IPTABLES_IPV6		if LXC_SYSTEMD_UNIT
+	select IPTABLES_IPV6_SYSTEMD_UNIT	if LXC_SYSTEMD_UNIT
+	select IPTABLES_IPV4_SYSTEMD_UNIT	if LXC_SYSTEMD_UNIT
+	select IPTABLES_INSTALL_TOOLS		if LXC_SYSTEMD_UNIT
+	help
+	  LXC is a userspace interface for the Linux kernel containment
+	  features. Through a powerful API and simple tools, it lets
+	  Linux users easily create and manage system or application
+	  containers.
+
+if LXC
+
+config LXC_GNUTLS
+	bool
+	prompt "LXC gnutls support"
+	default n
+	help
+	  Turn on to enable gnutls support in lxc
+
+config LXC_SELINUX
+	bool
+	prompt "LXC selinux support"
+	default n
+	help
+	  Turn on to enable selinux support in lxc
+
+config LXC_SECCOMP
+	bool
+	prompt "LXC seccomp support"
+	default n
+	help
+	  Turn on to enable seccomp support in lxc
+
+config LXC_SYSTEMD_UNIT
+	bool
+	prompt "LXC systemd unit"
+	default INITMETHOD_SYSTEMD
+	help
+	  Turn on to install systemd unit for lxc
+
+config LXC_TEST_TOOLS
+	bool
+	prompt "LXC test applications"
+	default n
+	help
+	  Turn on to enable building the lxc test applications
+
+endif
diff --git a/rules/lxc.make b/rules/lxc.make
new file mode 100644
index 000000000..56fad1536
--- /dev/null
+++ b/rules/lxc.make
@@ -0,0 +1,210 @@
+# -*-makefile-*-
+#
+# Copyright (C) 2018 by Michael Grzeschik <mgr@pengutronix.de>
+#
+# See CREDITS for details about who has contributed to this project.
+#
+# For further information about the PTXdist project and license conditions
+# see the README file.
+#
+
+#
+# We provide this package
+#
+PACKAGES-$(PTXCONF_LXC) += lxc
+
+#
+# Paths and names
+#
+LXC_VERSION	:= 3.0.1
+LXC_MD5		:= 8eb396dde561e5832ba2d505513a1935
+LXC		:= lxc-$(LXC_VERSION)
+LXC_SUFFIX	:= tar.gz
+LXC_URL		:= https://linuxcontainers.org/downloads/lxc/$(LXC).$(LXC_SUFFIX)
+LXC_SOURCE	:= $(SRCDIR)/$(LXC).$(LXC_SUFFIX)
+LXC_DIR		:= $(BUILDDIR)/$(LXC)
+LXC_LICENSE	:= unknown
+
+# ----------------------------------------------------------------------------
+# Prepare
+# ----------------------------------------------------------------------------
+
+#LXC_CONF_ENV	:= $(CROSS_ENV)
+
+#
+# autoconf
+#
+LXC_CONF_TOOL	:= autoconf
+LXC_CONF_OPT	:= \
+	$(CROSS_AUTOCONF_USR) \
+	--enable-silent-rules \
+	--enable-dependency-tracking \
+	--enable-shared \
+	--disable-static \
+	--disable-fast-install \
+	--disable-libtool-lock \
+	--disable-werror \
+	--disable-rpath \
+	--disable-doc \
+	--disable-api-docs \
+	--disable-apparmor \
+	--$(call ptx/endis, PTXCONF_LXC_GNUTLS)-gnutls \
+	--$(call ptx/endis, PTXCONF_LXC_SELINUX)-selinux \
+	--$(call ptx/endis, PTXCONF_LXC_SECCOMP)-seccomp \
+	--enable-capabilities \
+	--enable-examples \
+	--disable-mutex-debugging \
+	--disable-bash \
+	--enable-tools \
+	--enable-commands \
+	--$(call ptx/endis, PTXCONF_LXC_TEST_TOOLS)-tests \
+	--enable-configpath-log \
+	--disable-pam \
+	--with-init-script=systemd \
+	--with-systemdsystemunitdir=/usr/lib/systemd/system/ \
+	--with-distro=unknown \
+	--with-usernic-conf \
+	--with-usernic-db \
+	--with-log-path=/var/log \
+	--with-pamdir=none
+
+LXC_APPLICATIONS := \
+	copy \
+	cgroup \
+	create \
+	snapshot \
+	freeze \
+	config \
+	monitor \
+	unfreeze \
+	device \
+	destroy \
+	ls \
+	console \
+	wait \
+	execute \
+	update-config \
+	stop \
+	checkconfig \
+	checkpoint \
+	usernsexec \
+	attach \
+	start \
+	top \
+	info \
+	autostart \
+	unshare
+
+ifdef PTXCONF_LXC_TEST_TOOLS
+LXC_TEST_TOOLS := \
+	containertests \
+	may-control \
+	console \
+	locktests \
+	no-new-privs \
+	snapshot \
+	concurrent \
+	shutdowntest \
+	cgpath \
+	get_item \
+	criu-check-feature \
+	apparmor \
+	share-ns \
+	saveconfig \
+	clonetest \
+	createtest \
+	createconfig \
+	shortlived \
+	rootfs \
+	getkeys \
+	console-log \
+	attach \
+	reboot \
+	automount \
+	api-reboot \
+	destroytest \
+	startone \
+	raw-clone \
+	parse-config-file \
+	config-jump-table \
+	autostart \
+	state-server \
+	list \
+	device-add-remove \
+	cloneconfig \
+	utils \
+	lxcpath
+endif
+
+# ----------------------------------------------------------------------------
+# Target-Install
+# ----------------------------------------------------------------------------
+
+$(STATEDIR)/lxc.targetinstall:
+	@$(call targetinfo)
+
+	@$(call install_init, lxc)
+	@$(call install_fixup, lxc, PRIORITY, optional)
+	@$(call install_fixup, lxc, SECTION, base)
+	@$(call install_fixup, lxc, AUTHOR, "Michael Grzeschik <mgr@pengutronix.de>")
+	@$(call install_fixup, lxc, DESCRIPTION, missing)
+
+	@$(call install_lib, lxc, 0, 0, 0644, liblxc);
+
+	@$(call install_copy, lxc, 0, 0, 0644, /var/lib/lxc);
+	@$(call install_copy, lxc, 0, 0, 0644, /usr/lib/lxc/rootfs);
+
+	@$(call install_tree, lxc, 0, 0, -, /usr/share/lxc/config);
+
+ifdef PTXCONF_LXC_SELINUX
+	@$(call install_tree, lxc, 0, 0, -, /usr/share/lxc/selinux);
+endif
+
+	@$(call install_alternative, lxc, 0, 0, 0644, /etc/lxc/default.conf);
+	@$(call install_alternative, lxc, 0, 0, 0644, /etc/default/lxc-net);
+
+	@$(call install_copy, lxc, 0, 0, 0644, -, /etc/default/lxc)
+
+	@$(foreach app, $(LXC_APPLICATIONS), \
+		$(call install_copy, lxc, 0, 0, 0755, $(LXC_PKGDIR)/usr/bin/lxc-$(app), \
+			/usr/bin/lxc-$(app))$(ptx/nl))
+
+	@$(foreach app, \
+		containers \
+		net \
+		apparmor-load \
+		user-nic \
+		monitord, \
+		$(call install_copy, lxc, 0, 0, 0755, -, \
+			/usr/libexec/lxc/lxc-$(app))$(ptx/nl))
+
+ifdef PTXCONF_LXC_TEST_TOOLS
+	@$(foreach app, $(LXC_TEST_TOOLS), \
+		$(call install_copy, lxc, 0, 0, 0755, $(LXC_PKGDIR)/usr/bin/lxc-test-$(app), \
+			/usr/bin/lxc-tests/$(app))$(ptx/nl))
+endif
+
+ifdef PTXCONF_LXC_SYSTEMD_UNIT
+	@$(foreach rule, \
+		lxc.service \
+		lxc@.service \
+		lxc-net.service, \
+		$(call install_copy, lxc, 0, 0, 0644, -, \
+			/usr/lib/systemd/system/$(rule))$(ptx/nl))
+
+	@$(foreach rule, \
+		lxc.service \
+		lxc@.service \
+		lxc-net.service, \
+		$(call install_link, lxc, ../$(rule), \
+			/usr/lib/systemd/system/multi-user.target.wants/$(rule))$(ptx/nl))
+endif
+
+	@$(call install_copy, lxc, 0, 0, 0755, \
+		$(PTXDIST_SYSROOT_TOOLCHAIN)/usr/bin/getent, /usr/bin/getent)
+
+	@$(call install_finish, lxc)
+
+	@$(call touch)
+
+# vim: syntax=make
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
