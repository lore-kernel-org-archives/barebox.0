Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RbBVL-0003Oq-M4
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 13:37:51 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7A927FFBBC2
 for <barebox@lists.infradead.org>; Thu, 15 Dec 2011 14:38:11 +0100 (CET)
Date: Thu, 15 Dec 2011 14:33:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111215133317.GD9234@game.jcrosoft.org>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
 <1323945034-19687-7-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323945034-19687-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: *** PROBABLY SPAM *** [PATCH 06/12] reimplement uImage code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:30 Thu 15 Dec     , Sascha Hauer wrote:
> Provide a new API for accessing uImages which makes it easy
> for commands to open images, verify them, load to (free) sdram
> regions and show information about uImages.
> 
> - We now do not load the image to malloced space anymore.
> - The data in the header is now stored in cpu native endianess
>   after uimage_open which makes it easy to access the header data.
> - uImage can be loaded to dynamically allocated sdram regions.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
I was more think of a filesystem

so we can execute an embedded script

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
