Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x232.google.com ([2607:f8b0:400d:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyKJU-0005xZ-M5
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 15:36:10 +0000
Received: by mail-qk0-x232.google.com with SMTP id d131so26339199qkc.3
 for <barebox@lists.infradead.org>; Wed, 12 Apr 2017 08:35:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAARUG94j21s-AC0-gXYG81SjnCa1ahPfH1oaq=fb+rFgEpSE8A@mail.gmail.com>
References: <CAARUG94j21s-AC0-gXYG81SjnCa1ahPfH1oaq=fb+rFgEpSE8A@mail.gmail.com>
From: Zdenek Svachula <zdenek.svachula@medictech.com>
Date: Wed, 12 Apr 2017 17:35:46 +0200
Message-ID: <CAARUG94vbynM7MJu=kfPynABwf5rhDDd3OBM-2SyRy0PFO_8kQ@mail.gmail.com>
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
Subject: Re: gpio-keys on barebox 2015.11
To: barebox@lists.infradead.org

Hi all,

I'm working with barebox 2015.11 phy4 (from phytex.de) I try add to dts
        gpio_keys {
                compatible = "gpio-keys";
                #address-cells = <1>;
                #size-cells = <0>;
                autorepeat;
                up {
                                label = "GPIO Key up";
                                linux,code = <103>;
                                gpios = <&gpio2 24 1>;
                };
                enter {
                                label = "GPIO Key ENTER";
                                linux,code = <28>;
                                gpios = <&gpio5 8 1>;
                };


        };

to allow boot selection boot menu via 2 gpio button  I also enable
GPIO-buttons in menuconfig but it seem not workin.

Can you please me point to some method how to debug if gpio polling
works or if dts is for barebox wrong.

Zdenek S.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
