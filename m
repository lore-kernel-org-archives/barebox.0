Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S5BtN-00060W-3d
 for barebox@lists.infradead.org; Wed, 07 Mar 2012 08:06:37 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0189DDC6D25
 for <barebox@lists.infradead.org>; Wed,  7 Mar 2012 09:09:39 +0100 (CET)
Date: Wed, 7 Mar 2012 08:56:01 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120307075601.GK12248@game.jcrosoft.org>
References: <1331055375-21439-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331055375-21439-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH] net: dhcp: allow to set transmitted vendor id
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On 18:36 Tue 06 Mar     , Enrico Scholz wrote:
> For net boot setups it is useful to submit boot params like server or
> bootfile over dhcp.  To distinguish barebox from e.g. pxe machines, a
> custom vendor id can be sent in dhcp discover/request messages.
> 
> E.g. the ISC dhcp server can be configured with
> 
> | if substring(option vendor-class-identifier,0,8) = "barebox:" {
> | 	next-server		192.168.3.24;
> | 	server-name		"192.168.3.24";
> | 	option tftp-server-name	"192.168.3.24";
> | 	option root-path = concat("/srv/sysroots/by-mac/",
> |          binary-to-ascii (16, 8, "-", substring (hardware, 1, 6)));
> | }
> 
> to sent boot params which are valid for barebox hosts only.
like the idea
but the vendor id is barebox and can be overwrite it for each eth device via
param

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
