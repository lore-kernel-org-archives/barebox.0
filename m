Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anCPl-0000DM-I9
 for barebox@lists.infradead.org; Mon, 04 Apr 2016 21:52:07 +0000
Message-ID: <1459806291.24482.38.camel@ws-apr.office.loc>
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Mon, 04 Apr 2016 23:44:51 +0200
In-Reply-To: <20150617090646.GI6325@pengutronix.de>
References: <20150617064250.GA2778@lws-weitzel2@phytec.de>
 <20150617090646.GI6325@pengutronix.de>
Content-Type: multipart/mixed; boundary="=-d77BjyOzn91lbX1o6HSa"
Mime-Version: 1.0
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
Subject: barebox-state (dt-utils): dump-shell broken for state@0
To: barebox@lists.infradead.org


--=-d77BjyOzn91lbX1o6HSa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mi, 2015-06-17 at 11:06 +0200, Sascha Hauer wrote:
> On Wed, Jun 17, 2015 at 08:42:50AM +0200, Jan Remmet wrote:
> > Hello,
> > I'm working with barebox states and wonder if there is already a tool to access
> > states in eeprom from linux?
> > The states from a dtb backend should be easy to read. For raw there must be
> > looked under /proc/devicetree or a state kernel driver.
> 
> Yes, there is such a tool here:
> 
> git://git.pengutronix.de/git/tools/dt-utils.git
> 
> The binary you'll need is barebox-state.

barebox-state provides a command "--dump-shell" to dump the state
suitable for shell sourcing.
Essentially, it prints out variable=value pairs.
So typical use would be a
	eval `barebox-state --dump-shell`
somewhere in a shell script (incl. simple ones like busybox ash).

Unfortunately, this breaks with indices in the state name, as @ is not
escaped.
Tested with dt-utils v2015.10.0, but according to code this is the case
from v2015.05.0 up until master.

As of commit 6d58ca4 "barebox-state: fix export of shell variables:",
the fixed prefix "STATE_" was replaced by the supplied state name.
Also in there, all '.' are replaced by '_' in the variable name. Not in
the state name itself.

The same would be necessary for (at least) '@', because it is invalid
also inside a shell variable name. As probably other chars, just I'm not
sure which might show up from the dts. So no premature patch from my
side.
Not only for the variable name, but also the state name itself.

For clarification of the setup and behaviour, see below.


Now, question would be how to fix this.
Also replacing '@' by '_' might break existing users (e.g. when parsing
from stdin or similar, instead of using shells eval command).
On the other hand, status quo breaks the "described" use of dump
_shell_ ...

Talking about this, it might be also some idea to resurrect the old
behaviour of always printing 'STATE_' as prefix instead of the state
name from dts. Not sure if it's the best idea, or how to call such an
extra option, didn't think it through by now.
Just saying, as I will go this way here (as a hotfix) for my setup...

Ideas, opinions ?

Best regards,
  Andreas




Having a dts definition (according to documentation) like

state: state@0 {
        [...]
        active_firmware_slot@0 {
                [...]
        };
        [...]
};

this results in

# barebox-state -vv
found state node /state@0:
state@0 {
        [...]
        active_firmware_slot@0 {
                [...]
        }
        [...]
}

# barebox-state --dump-shell
load successful
state@0_active_firmware_slot="slot1"
[...]

# eval `barebox-state --dump-shell`
load successful
-sh: eval: state@0_active_firmware_slot=slot1: not found


With attached (quick and dirty) patch, this would look like:

# barebox-state --dump-shell
load successful
state_0_active_firmware_slot="slot1"
[...]


Regarding these changes, some free() for the strdup might be nice,
albeit not really necessary, as main ends anyway soon.

Last IMHO, loglevel without passing verbose as parameter should be
reduced, resp. 'dev_info(&state->dev, "load successful\n");' should be
taken down in level. To stay silent if nothing went wrong, in good unix
tradition.


-- 

carpe noctem engineering
Ingenieurbuero fuer Hard- & Software-Entwicklung Andreas Pretzsch
Dipl.-Ing. (FH) Andreas Pretzsch        Tel. +49-(0)7307-936088-1
Lange Strasse 28a                       Fax: +49-(0)7307-936088-9
89250 Senden, Germany                   email: apr@cn-eng.de

--=-d77BjyOzn91lbX1o6HSa
Content-Disposition: attachment; filename="barebox-state_fix_shell_escape.diff"
Content-Type: text/x-patch; name="barebox-state_fix_shell_escape.diff"; charset="UTF-8"
Content-Transfer-Encoding: 7bit

diff --git a/src/barebox-state.c b/src/barebox-state.c
index bc1010e..b7b6c03 100644
--- a/src/barebox-state.c
+++ b/src/barebox-state.c
@@ -2129,17 +2129,22 @@ int main(int argc, char *argv[])
 	if (do_dump_shell) {
 		state_for_each_var(state, v) {
 			struct variable_type *vtype;
-			char *name, *ptr;
+			char *statename, *name, *ptr;
 			int i;
 
-			/* replace "." by "_" to make it var name shell compatible */
+			/* replace "." by "_" to make the var name shell compatible */
 			name = strdup(v->name);
 			ptr = name;
 			while ((ptr = strchr(ptr, '.')))
 				*ptr++ = '_';
+			/* replace "@" by "_" to make the state name shell compatible */
+			statename = strdup(state->name);
+			ptr = statename;
+			while ((ptr = strchr(ptr, '@')))
+				*ptr++ = '_';
 
 			vtype = state_find_type(v->type);
-			printf("%s_%s=\"%s\"\n", state->name, name, vtype->__get(v));
+			printf("%s_%s=\"%s\"\n", statename, name, vtype->__get(v));
 		}
 	}
 

--=-d77BjyOzn91lbX1o6HSa
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--=-d77BjyOzn91lbX1o6HSa--
