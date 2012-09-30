Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f49.google.com ([209.85.220.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TILMh-000597-5b
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 15:23:33 +0000
Received: by padbi5 with SMTP id bi5so3843351pad.36
 for <barebox@lists.infradead.org>; Sun, 30 Sep 2012 08:23:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120930140743.GS26553@game.jcrosoft.org>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
 <20120930140743.GS26553@game.jcrosoft.org>
Date: Sun, 30 Sep 2012 17:23:30 +0200
Message-ID: <CAAMcf8DNJNe8wOpB1yEtRgadhb14gk+p4gc8AXVpqC8mJwCKsA@mail.gmail.com>
From: vj <vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7231446412731539670=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/9] omap4: add usb boot support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

--===============7231446412731539670==
Content-Type: multipart/alternative; boundary=f46d042ef4750f2bb304caecdf74

--f46d042ef4750f2bb304caecdf74
Content-Type: text/plain; charset=UTF-8

About the "need more explanation here", see:
lists.infradead.org/pipermail/barebox/2012-September/009865.html
omap_vector_init is disabled because it breaks usb booting.
Seems to be differences between u-boot and barebox. I don't know which
behaviour is the correct, but by now disable it as in u-boot.

--f46d042ef4750f2bb304caecdf74
Content-Type: text/html; charset=UTF-8

About the &quot;need more explanation here&quot;, see: <a href="http://lists.infradead.org/pipermail/barebox/2012-September/009865.html" target="_blank">lists.infradead.org/pipermail/barebox/2012-September/009865.html</a><br>
omap_vector_init is disabled because it breaks usb booting.<br>
Seems to be differences between u-boot and barebox. I don&#39;t know which 
behaviour is the correct, but by now disable it as in u-boot.<br><br>

--f46d042ef4750f2bb304caecdf74--


--===============7231446412731539670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7231446412731539670==--
