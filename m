Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x230.google.com ([2607:f8b0:4002:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkUHx-0001hB-7L
 for barebox@lists.infradead.org; Wed, 14 May 2014 08:11:45 +0000
Received: by mail-yk0-f176.google.com with SMTP id q9so1272552ykb.35
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 01:10:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOpc7mHnhTLxqA9FABZMSRnf05Ocu99bFTkch1DH63O+7=U-yQ@mail.gmail.com>
References: <CAOMZO5CMuVwZGB4DoZchuE7DCJU4=fMHZQugBzm3mPsQsqEamw@mail.gmail.com>
 <56785357-39FF-4F83-B1B3-F20C1D921A25@gmail.com>
 <20140514093212.ad026f36df7b0e4edaa54ba6@gmail.com>
 <CAOpc7mGG+BLF+Jc1Q3UsSa+R7f96FxS3Rd22mckvJsMq_8m=nA@mail.gmail.com>
 <20140514072002.GZ5858@pengutronix.de>
 <CAOpc7mHnhTLxqA9FABZMSRnf05Ocu99bFTkch1DH63O+7=U-yQ@mail.gmail.com>
Date: Wed, 14 May 2014 10:10:58 +0200
Message-ID: <CAOpc7mEz0qXuNgiA7CsYJ_1nLeFzWaAoR5iUvVu1mw5Foefanw@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: Changing the baudrate via barebox prompt
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Here's a WIP:

index d92788a..9e639bb 100644
--- a/commands/magicvar.c
+++ b/commands/magicvar.c
@@ -5,12 +5,22 @@
 static int do_magicvar(int argc, char *argv[])
 {
        struct magicvar *m;
+       struct device_d *dev;
+       struct param_d *param;

        for (m = &__barebox_magicvar_start;
                        m != &__barebox_magicvar_end;
                        m++)
                printf("%-32s %s\n", m->name, m->description);

+       for_each_device(dev) {
+               if (!strcmp("global", dev_name(dev)))
+                       continue;
+               list_for_each_entry(param, &dev->parameters, list) {
+                       printf("%s.%s\n", dev_name(dev), param->name);
+               }
+       }
+
        return 0;
 }


However, the output lacks descriptions:

barebox:/ magicvar
...
global.login.timeout             timeout to type the password
global.model                     Product name of this hardware
global.version                   The barebox version
net.nameserver
net.domainname
cs0.baudrate
cs0.active
cs1.baudrate
cs1.active
cs2.baudrate
cs2.active
cs3.baudrate
cs3.active
cs4.baudrate
cs4.active
eth0.ipaddr
eth0.serverip
eth0.gateway
eth0.netmask
eth0.ethaddr
mmc1.probe
mmc3.probe

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
