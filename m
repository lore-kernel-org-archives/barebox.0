Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKptm-0008FY-BU
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 11:51:46 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 58C6AFF934B
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 13:53:03 +0200 (CEST)
Date: Thu, 19 Apr 2012 13:32:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120419113250.GC20601@game.jcrosoft.org>
References: <OF62A1617C.00758B18-ONC12579E2.00369768-C12579E2.00370E2B@o0802.rafi.inhouse>
 <20120416111108.GV30672@game.jcrosoft.org>
 <OF8CCAF0FB.FEC72171-ONC12579E2.004009D2-C12579E2.00413C07@o0802.rafi.inhouse>
 <20120416121937.GR3852@pengutronix.de>
 <OF48823994.EC18384B-ONC12579E5.003B9CFE-C12579E5.003C6962@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF48823994.EC18384B-ONC12579E5.003B9CFE-C12579E5.003C6962@o0802.rafi.inhouse>
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
Subject: Re: Antwort: Re: Antwort: Re: barebox JSON
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

On 12:59 Thu 19 Apr     , christian.buettner@rafi.de wrote:
>    Thx,
>    Is there an example code to accept a message through ethernet with
>    'network console'
>    and call another tool, defined by the incoming message, through expect or
>    kermit (depends what fits better).
>    I am new to programming with linux..
> 
you have it here scripts/netconsole

and  in the doc

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
