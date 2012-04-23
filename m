Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMDfI-0007Gs-UY
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 07:26:29 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9CA27FFA756
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 09:28:01 +0200 (CEST)
Date: Mon, 23 Apr 2012 09:06:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120423070655.GO20601@game.jcrosoft.org>
References: <OF62A1617C.00758B18-ONC12579E2.00369768-C12579E2.00370E2B@o0802.rafi.inhouse>
 <20120416111108.GV30672@game.jcrosoft.org>
 <OF8CCAF0FB.FEC72171-ONC12579E2.004009D2-C12579E2.00413C07@o0802.rafi.inhouse>
 <20120416121937.GR3852@pengutronix.de>
 <OFE1B60695.7A4CF434-ONC12579E2.0043DD1E-C12579E2.004453E0@o0802.rafi.inhouse>
 <20120416145351.43234ea7@eb-e6520>
 <OF73ABAF6E.8BAAC950-ONC12579E2.00528706-C12579E2.0052BF35@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF73ABAF6E.8BAAC950-ONC12579E2.00528706-C12579E2.0052BF35@o0802.rafi.inhouse>
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

On 17:03 Mon 16 Apr     , christian.buettner@rafi.de wrote:
>    Hi,
> 
>    is there a patch containing a tftp server on barebox, beeing able to
>    connect to and send data from any client?
no barebox is designed to request so we have only clients

add this support will not to much complexe but I recommand you to use bootp

so barebox can download and execute what you want

binfmt is in the next branch


I do it here with shell script and them manage the dhcp request with
hostname/vendor id/client id/clinet uuid/user class or custom request

Best Regards,
J.
> 
>    - christian

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
