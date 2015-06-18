Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z5TV9-0001TI-W1
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 06:40:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DEC9BA00302
 for <barebox@lists.infradead.org>; Thu, 18 Jun 2015 08:41:47 +0200 (CEST)
Date: Thu, 18 Jun 2015 08:40:16 +0200
From: Jan Remmet <J.Remmetl@phytec.de>
Message-ID: <20150618064016.GA2723@lws-weitzel2@phytec.de>
References: <20150617064250.GA2778@lws-weitzel2@phytec.de>
 <20150617090646.GI6325@pengutronix.de>
 <55817B96.6040703@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <55817B96.6040703@pengutronix.de>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Remmet <J.Remmet@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: state: access from linux
To: barebox@lists.infradead.org

On Wed, Jun 17, 2015 at 03:52:22PM +0200, Marc Kleine-Budde wrote:
> On 06/17/2015 11:06 AM, Sascha Hauer wrote:
> > On Wed, Jun 17, 2015 at 08:42:50AM +0200, Jan Remmet wrote:
> >> Hello,
> >> I'm working with barebox states and wonder if there is already a tool to access
> >> states in eeprom from linux?
> >> The states from a dtb backend should be easy to read. For raw there must be
> >> looked under /proc/devicetree or a state kernel driver.
> > 
> > Yes, there is such a tool here:
> > 
> > git://git.pengutronix.de/git/tools/dt-utils.git
> 
> BTW: Release tarballs can be found here:
> 
> http://www.pengutronix.de/software/dt-utils/download/

Thank you for pointing me to this tool. I have some trouble to get it working
with an eeprom backend. Just to be sure if the barebox side is ok:

of_dump /state
state {
        magic = <0x7074000a>;
        compatible = "barebox,state";
	        backend-type = "raw";
	        backend = "/soc/aips-bus@02100000/i2c@021a0000/eeprom@50";
		linux,phandle = <0x2f>;
		phandle = <0x2f>;


The documentation shows also "partname:" in the backend property, but for
eeprom this is not valid.

Jan

> 
> Marc
> 
> -- 
> Pengutronix e.K.                  | Marc Kleine-Budde           |
> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |
> 



> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
