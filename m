Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x231.google.com ([2607:f8b0:400d:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGmC0-0004cf-TS
 for barebox@lists.infradead.org; Wed, 06 Jan 2016 11:23:53 +0000
Received: by mail-qg0-x231.google.com with SMTP id 6so221436653qgy.1
 for <barebox@lists.infradead.org>; Wed, 06 Jan 2016 03:23:32 -0800 (PST)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 6 Jan 2016 12:23:11 +0100
Message-ID: <CAGm1_ksapGAKivaixu925Kuz9tdk_W5LzYMdR52C+SyQo=C+GA@mail.gmail.com>
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
Subject: FIT support: node syntax
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>, Trent Piepho <tpiepho@kymetacorp.com>

Hi Marc,

I've looked at U-Boot source code to get the idea, how to pass configuration id.

See this definition:

kernel@1 {
description = "Vanilla Linux kernel";
data = /incbin/("zImage");
type = "kernel";
arch = "arm";
os = "linux";
compression = "none";
load = <0x80200000>;
entry = <0x80200000>;
hash@1 {
algo = "crc32";
};
hash@2 {
algo = "sha1";
};
};

One can see two hash nodes: hash@1 and hash@2.

See this routine, that extracts mandatory fields at first and then
just iterates over all nodes and prints hashes and signs:

http://git.denx.de/cgi-bin/gitweb.cgi?p=u-boot.git;a=blob;f=common/image-fit.c;h=c531ee74d7fde55c5ac52edb3949fb824954e750;hb=HEAD#l342

According to this routine nodes just need to be unique and you can use
the number after '@' to distinguish between nodes of the same type.

static void fit_image_print_verification_data(const void *fit, int noffset,
                                       const char *p)
{
        const char *name;

        /*
         * Check subnode name, must be equal to "hash" or "signature".
         * Multiple hash/signature nodes require unique unit node
         * names, e.g. hash@1, hash@2, signature@1, signature@2, etc.
         */
        name = fit_get_name(fit, noffset, NULL);
        if (!strncmp(name, FIT_HASH_NODENAME, strlen(FIT_HASH_NODENAME))) {
                fit_image_print_data(fit, noffset, p, "Hash");
        } else if (!strncmp(name, FIT_SIG_NODENAME,
                                strlen(FIT_SIG_NODENAME))) {
                fit_image_print_data(fit, noffset, p, "Sign");


So configuration node is also just a string. So we must pass the
stuff, that comes after '@' in bootm command as a "char *" to
fit_open():

>bootm /boot/kernel-fit.itb@conf_name_string

So snprintf(unit_name, sizeof(unit_name), "conf%d@1", num); should be
something like:

snprintf(unit_name, sizeof(unit_name), "%s@1", conf_name_string);

or even complicated, if we allow to pass conf_name_string@number to
bootm command.

configurations {
default = "conf210@1";
conf210@1 {
description = "Boot Linux kernel with FDT blob (210)";
kernel = "kernel@1";
fdt = "fdt210@1";
};
conf211@1 {
description = "Boot Linux kernel with FDT blob (211)";
kernel = "kernel@1";
fdt = "fdt211@1";
};
};

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
