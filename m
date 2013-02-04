Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2Ljg-0008Cz-DL
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 13:05:25 +0000
Received: from mail622.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1E8F2FFA5F5
 for <barebox@lists.infradead.org>; Mon,  4 Feb 2013 14:19:38 +0100 (CET)
Date: Mon, 4 Feb 2013 14:04:04 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130204130404.GI18068@game.jcrosoft.org>
References: <20130204115856.GB3366@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130204115856.GB3366@x61s.8.8.8.8>
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
Subject: Re: the different between getopt and getopts
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On 12:58 Mon 04 Feb     , Alexander Aring wrote:
> Hi,
> 
> barebox has a builtin "getopt" hush implementation. But this "getopt"
> implementation used a syntax which is more like "getopts".
> 
> "getopt" and "getopts" do the same thing in different syntax. See:
> 
> http://aplawrence.com/Unix/getopts.html
> 
> In my opinion we should rename "getopt" to "getopts". I can make a patch for
> this, but I don't know if there is a special reason why in barebox
> "getopts" is "getopt".
no this will break down comptibility

Best Regards,
J.
> 
> Regards Alex
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
