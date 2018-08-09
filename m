Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fniu4-0006XE-Vn
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 11:14:54 +0000
Date: Thu, 9 Aug 2018 13:14:33 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180809111433.GA20330@ravnborg.org>
References: <20180809095146.GA26594@ravnborg.org>
 <6rzhxvhk7p.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6rzhxvhk7p.fsf@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: NFS boot - could not open /.tftp_tmp_path
To: Ulrich =?iso-8859-1?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Ulrich
> > Then when I try to boot from nfs I get the following output:
> >
> > barebox: boot nfs://192.168.86.201/nfsboot/arm9/
> 
> you already have the slash separating the host part of the URL and the
> path part, but you missed the slash that is needed at the beginning of
> the absolute path:
> 
>   boot nfs://192.168.86.201//nfsboot/arm9/
> 
> (with a two slashes) should hopefully do the trick.

Hmm, no luck:
barebox:/ boot nfs://192.168.86.201//nfsboot/arm9/
eth0: DHCP client bound to address 192.168.86.20
T T T T T T T T T T T T T T could not open /.tftp_tmp_path/zImage-at91sam9263ekt

barebox:/ boot nfs://192.168.86.201//nfsboot/arm9
eth0: DHCP client bound to address 192.168.86.20
T T T T T T T T T T T T T T could not open /.tftp_tmp_path/zImage-at91sam9263ekt

I will try to add some debugging and see whats going on.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
