Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-co1nam03on0119.outbound.protection.outlook.com
 ([104.47.40.119] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLRUZ-0002Ph-Ei
 for barebox@lists.infradead.org; Wed, 23 May 2018 10:59:40 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Wed, 23 May 2018 10:59:21 +0000
Message-ID: <7b0617ad32db44235a2f7efbe19b31e802a9493b.camel@allegion.com>
Content-Language: en-US
Content-ID: <6F2DAB8911485746A2A5CD10E8115B59@prod.exchangelabs.com>
MIME-Version: 1.0
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
Subject: Modifying device-tree: /chosen
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I haven't found a (good) way to modify the kernel device tree before booting
when using the bootchooser in combination with blspec.  What seems to be done
quite often is registering fixup functions (of_register_fixup) in board-specific
code.

I'd prefer not patch board-specific code, because my use case is rather specific
(passing the device serial number, the bootloader version, and a few other
things to the kernel). So the question is, if this use case is common enough to
provide a more generic way.

My proposal is providing a command like this:

of_fixup_chosen [PROPERTY] [VALUE]

I guess it would suffice to only store strings in /chosen.

Example:
of_fixup_chosen bootloader-version $global.version 
of_fixup_chosen reset-reason $global.system.reset
of_fixup_chosen serial $serial_number


I'm open for other suggestions, as this could also be implementend in a more
generic (and also more complex) way by allowing to fix up random nodes and
properties throughout the device tree.


Best Regards
Florian
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
