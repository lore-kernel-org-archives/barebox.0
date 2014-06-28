Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0tO2-00079f-M6
 for barebox@lists.infradead.org; Sat, 28 Jun 2014 14:13:51 +0000
Received: by mail-la0-f42.google.com with SMTP id pn19so3790813lab.29
 for <barebox@lists.infradead.org>; Sat, 28 Jun 2014 07:13:28 -0700 (PDT)
Date: Sat, 28 Jun 2014 18:25:22 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140628182522.f1a434b64c2b01de8c9af6ca@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] picotcp.20140628
To: barebox@lists.infradead.org
Cc: Daniele Lacamera <daniele.lacamera@tass.be>

Hi All!

I have pushed new version of picotcp-enabled barebox to github:
        =

   https://github.com/frantony/barebox/commits/picotcp.20140628

Changes since picotcp.20140530:
 =

 * rebase over latest barebox and picotcp
 =

 * net: make 'picoping' behave like traditional 'ping' command
    use pico_icmp4_ping_abort()
 =

 * net: make 'dhclient' behave like old 'dhcp' command
    use pico_dhcp_client_abort()

There is a problem with picoping.
If I start picoping and no correct reply packet is received
then picoping ends with timeout error message. (good!)

But if I start picoping and only several reply packets are
received (e.g. I intentionaly break network interface setup)
but not the last then timeout callback function is not called.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
