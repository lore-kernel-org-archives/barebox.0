Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RLZXa-0008FR-SW
 for barebox@lists.infradead.org; Wed, 02 Nov 2011 12:03:36 +0000
Received: by qap15 with SMTP id 15so80716qap.36
 for <barebox@lists.infradead.org>; Wed, 02 Nov 2011 05:03:33 -0700 (PDT)
Message-ID: <4EB13195.9060004@gmail.com>
Date: Wed, 02 Nov 2011 19:03:33 +0700
From: Loc Nguyen <it050021@gmail.com>
MIME-Version: 1.0
References: <4EAEDE2C.5010904@crane-soft.de>
 <20111102101652.GK23421@pengutronix.de>
In-Reply-To: <20111102101652.GK23421@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5881320279471139444=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Issue when building Barebox with ARM EABI 4.4.3
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--===============5881320279471139444==
Content-Type: multipart/alternative;
 boundary="------------040401080405080304080409"

This is a multi-part message in MIME format.
--------------040401080405080304080409
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

After building Barebox with arm-eabi 4.4.3, Barebox start-up properly
but I got "command not found" error. I checked system.map and found that
there is no API from//command/  folder.
But everything is OK with arm-eabi 4.4.0.
So I think the problem comes from 4.4.3 ?
Anyone can help me ?

Best regards,
LocN


--------------040401080405080304080409
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
    <title></title>
  </head>
  <body bgcolor="#ffffff" text="#000000">
    <pre>Hi all,</pre>
    <pre>
After building Barebox with arm-eabi 4.4.3, Barebox start-up properly
but I got "command not found" error. I checked system.map and found that
there is no API from <i>/command</i> folder.
But everything is OK with arm-eabi 4.4.0.
So I think the problem comes from 4.4.3 ?
Anyone can help me ?
</pre>
    <pre class="moz-signature" cols="72">Best regards,
LocN</pre>
  </body>
</html>

--------------040401080405080304080409--


--===============5881320279471139444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5881320279471139444==--
