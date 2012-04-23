Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMDdE-0007Ca-0o
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 07:24:20 +0000
Received: by qcsu28 with SMTP id u28so7745390qcs.36
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 00:24:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <OF73ABAF6E.8BAAC950-ONC12579E2.00528706-C12579E2.0052BF35@o0802.rafi.inhouse>
References: <OF62A1617C.00758B18-ONC12579E2.00369768-C12579E2.00370E2B@o0802.rafi.inhouse>
 <20120416111108.GV30672@game.jcrosoft.org>
 <OF8CCAF0FB.FEC72171-ONC12579E2.004009D2-C12579E2.00413C07@o0802.rafi.inhouse>
 <20120416121937.GR3852@pengutronix.de>
 <OFE1B60695.7A4CF434-ONC12579E2.0043DD1E-C12579E2.004453E0@o0802.rafi.inhouse>
 <20120416145351.43234ea7@eb-e6520>
 <OF73ABAF6E.8BAAC950-ONC12579E2.00528706-C12579E2.0052BF35@o0802.rafi.inhouse>
Date: Mon, 23 Apr 2012 09:24:18 +0200
Message-ID: <CAJfOKBxt_GoTbhaJrrkRWWzQp8QVB=qGmkvbpmxFcYErfYVA6Q@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: tftpserver
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

2012/4/16  <christian.buettner@rafi.de>:
> Hi,
>
> is there a patch containing a tftp server on barebox, beeing able to connect
> to and send data from any client?
>
> - christian
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

Hi,

There is no tftp server in Barebox. However, you can send data to an
host server using tftp push.

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
