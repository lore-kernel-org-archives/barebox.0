Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TILT9-0005Eu-Fp
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 15:30:12 +0000
Received: by pbcxa7 with SMTP id xa7so6112153pbc.36
 for <barebox@lists.infradead.org>; Sun, 30 Sep 2012 08:30:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120930140743.GS26553@game.jcrosoft.org>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
 <20120930140743.GS26553@game.jcrosoft.org>
Date: Sun, 30 Sep 2012 17:30:09 +0200
Message-ID: <CAAMcf8AdiJ1NErByP4kawf=sG9fNxOaDcwq0eKpSTf++so9ADQ@mail.gmail.com>
From: vj <vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1358718638532455573=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/9] omap4: add usb boot support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

--===============1358718638532455573==
Content-Type: multipart/alternative; boundary=047d7b33d58ed498a204caecf648

--047d7b33d58ed498a204caecf648
Content-Type: text/plain; charset=UTF-8

About the "can you put a device driver for this":
omap4_usbboot_puts is used in the device driver serial_omap4_usbboot and
omap4_usbbootfs
or are you meaning to put the whole code for usb communications in a driver?

--047d7b33d58ed498a204caecf648
Content-Type: text/html; charset=UTF-8

About the &quot;can you put a device driver for this&quot;:<br>omap4_usbboot_puts is used in the device driver serial_omap4_usbboot and omap4_usbbootfs<br>or are you meaning to put the whole code for usb communications in a driver?<br>

--047d7b33d58ed498a204caecf648--


--===============1358718638532455573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1358718638532455573==--
