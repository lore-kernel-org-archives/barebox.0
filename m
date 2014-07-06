Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X3rf0-0004Q7-CK
 for barebox@lists.infradead.org; Sun, 06 Jul 2014 18:59:39 +0000
Received: from [99.240.204.5] (port=57058 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X3rea-0001kP-PS
 for barebox@lists.infradead.org; Sun, 06 Jul 2014 14:59:12 -0400
Date: Sun, 6 Jul 2014 14:59:09 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407061455580.16512@localhost>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-365218740-1404673152=:16558"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: generated doc "Options" for dhcp command drops last line
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-365218740-1404673152=:16558
Content-Type: TEXT/PLAIN; charset="utf-8"
Content-Transfer-Encoding: 8bit


  just noticed that the sphinx-generated doc page for the "dhcp"
command doesn't display the final line because of this in net/dhcp.c:

BAREBOX_CMD_HELP_START(dhcp)
BAREBOX_CMD_HELP_TEXT("Options:")
BAREBOX_CMD_HELP_OPT ("-H HOSTNAME", "hostname to send to the DHCP server")
BAREBOX_CMD_HELP_OPT ("-v ID\t", "DHCP Vendor ID (code 60) submitted in DHCP requests")
BAREBOX_CMD_HELP_OPT ("-c ID\t", "DHCP Client ID (code 61) submitted in DHCP requests")
BAREBOX_CMD_HELP_OPT ("-u UUID\t", "DHCP Client UUID (code 97) submitted in DHCP requests")
BAREBOX_CMD_HELP_OPT ("-U CLASS", "DHCP User class (code 77) submitted in DHCP requests")
BAREBOX_CMD_HELP_OPT ("-r RETRY", "retry limit (default "__stringify(DHCP_DEFAULT_RETRY)")");
BAREBOX_CMD_HELP_END

  it's that trailing semicolon on the second last line there, which i
suspect shouldn't be there, but if i take it out, the generated line
now literally includes "__stringify(DHCP_DEFAULT_RETRY)”, and i'm not
sure what to do about that, so if someone wants to fix it, go wild.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
--8323328-365218740-1404673152=:16558
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323328-365218740-1404673152=:16558--
